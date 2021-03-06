from django.db import models
from django.template.response import TemplateResponse
from django.http import JsonResponse

from wagtail.core.models import Page

from TUPFaculty.base.models import Schedule
from TUPFaculty.users.models import Professor
from TUPFaculty.facultyload.models import FacultyLoadModel
from django.contrib.postgres.search import SearchVector

class FacultyLoadPage(Page):
    max_count = 1
    parent_page_types = ['DepartmentHeadIndexPage']
    
    def serve(self, request):
        year = request.GET.get('year', None)
        sem = request.GET.get('sem', None)
        if year and sem:
            query_professor = request.GET.get('professor', None)
            professor = Professor.objects.get(pk=query_professor)

            data = FacultyLoadModel.objects.filter(
                professor=professor,
                year=int(year),
                semester=sem
            ).order_by('schedule__section__name')

            return TemplateResponse(
                    request, 
                    'facultyload/select_result.html',{
                        'datas' : data
                    }
                )

        return super().serve(request)

    def get_context(self, request):
        query_professor = request.GET.get('professor', None)
        professor = Professor.objects.get(pk=query_professor)

        context = super().get_context(request)
        # context['faculty_loading'] = DepartmentHeadIndexPage.objects.child_of(FacultyLoadingPage).first()
        context['query_professor'] = query_professor
        context['professor'] = professor
        context['department_head_page'] = True

        context['datas'] = FacultyLoadModel.objects.filter(
            professor=professor,
            year=2020,
            semester='first',
            approved=True,
        ).order_by('schedule__section__name')


        return context


class FacultyLoadingPage(Page):
    max_count = 1
    parent_page_types = ['DepartmentHeadIndexPage']

    def serve(self, request):
        year = request.GET.get('year', None)
        sem = request.GET.get('sem', None)  
        content = request.GET.get('content', None)
        submit_schedule = request.POST.get('schedule', None)
        faculty_pk = request.POST.get('faculty_pk', None)
        remove_pk = request.POST.get('remove_pk', None)
        query_professor = request.GET.get('professor', None)

        if remove_pk:
            FacultyLoadModel.objects.get(pk=remove_pk).delete()
            return JsonResponse({'is_approve': True})
            
        if faculty_pk:
            if faculty_pk:
                year = request.POST.get('year', None)
                sem = request.POST.get('sem', None)  
                professor = Professor.objects.get(pk=query_professor)
                faculty_model_to_be_approved = FacultyLoadModel.objects.get(
                    pk=faculty_pk,
                )
                if faculty_model_to_be_approved.approved is False:
                    faculty_model_to_be_approved.approved = True
                else :
                    faculty_model_to_be_approved.approved = False

                faculty_model_to_be_approved.save()
                
                data = FacultyLoadModel.objects.filter(
                    professor=professor,
                    year=int(year),
                    semester=sem
                ).order_by('schedule__section__name')

                return JsonResponse({'is_approve' : faculty_model_to_be_approved.approved})

        
        if submit_schedule:
            professor = Professor.objects.get(pk=query_professor)
            FacultyLoadModel.objects.update_or_create(
                professor=professor,
                schedule=Schedule.objects.get(pk=submit_schedule)
            )
            
        if content == 'table':
            if year and sem:
                professor = Professor.objects.get(pk=query_professor)
                data = FacultyLoadModel.objects.filter(
                    professor=professor,
                    year=int(year),
                    semester=sem
                ).order_by('schedule__section__name')

                return TemplateResponse(
                        request, 
                        'facultyload/department_faculty_loading_table_body.html',{
                            'datas' : data
                        }
                    )

        if content == 'schedule':
            if year and sem:
                professor = Professor.objects.get(pk=query_professor)

                data = FacultyLoadModel.objects.filter(
                    professor=professor,
                    year=int(year),
                    semester=sem
                ).order_by('schedule__section__name')

                return TemplateResponse(
                        request, 
                        'facultyload/includes/schedule_table.html',{
                            'datas' : data
                        }
                    )
        
        return super().serve(request)

    def get_context(self, request):
        context = super().get_context(request)
        search = request.GET.get('search', None)
        query_professor = request.GET.get('professor', None)
        professor = Professor.objects.get(pk=query_professor)
        
        context['department_head_page'] = True
        context['search'] = search
        if search:
            context['schedules'] = Schedule.objects.filter(subject__description__icontains=search)
        else:
            context['schedules'] = Schedule.objects.all()

            
        context['professor'] = professor
        context['query_professor'] = query_professor
        context['datas'] = FacultyLoadModel.objects.filter(
            professor=professor,
            year=2020,
            semester='first'
        ).order_by('schedule__section__name')
            

        return context
        

    
class DepartmentHeadIndexPage(Page):
    max_count = 1
    
    def serve(self,request):
        
        return super().serve(request)

    def get_context(self, request):
        context = super().get_context(request)
        context['department_head_page'] = self
        
        search_query = request.GET.get('search_query', None)
        context['faculty_load'] = self.get_children().live().type(FacultyLoadPage).first()
        
        if search_query:
            query_result = Professor.objects.annotate(
                 search=SearchVector('first_name', 'last_name', 'username'),
            ).filter(search=search_query)
            context['search_query'] = search_query
            context['query_table'] = query_result
            return context
            
            
        context['query_table'] = Professor.objects.all().filter(is_superuser=False)
        return context

    class Meta:
        verbose_name = 'Department Head Page'