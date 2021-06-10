from django.db import models

from wagtail.snippets.edit_handlers import SnippetChooserPanel
from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel
from django.template.response import TemplateResponse


from TUPFaculty.base.models import Professor


class FacultyLoadModel(models.Model):
    professor = models.ForeignKey(
        "base.Professor",
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    
    schedule = models.ForeignKey(
        "base.Schedule",
        null=True,
        on_delete=models.CASCADE,
    )

    year = models.IntegerField(
        default=2020
    )

    semester = models.CharField(
        max_length= 20,
        choices=[
            ('first', 'First sem'),
            ('second', 'Second Sem')
        ],
        default='first'
    )

    panels = [
        SnippetChooserPanel("professor"),
        SnippetChooserPanel("schedule"),
        FieldPanel('year'),
        FieldPanel('semester')
    ]


    class Meta:
        verbose_name = 'Faculty Loading'
        verbose_name_plural = 'Faculty Loading'


class FacultyLoad(Page):

    def serve(self, request):
        year = request.GET.get('year', None)
        sem = request.GET.get('sem', None)
        if year and sem:
            faculty = request.GET.get('faculty', None)
            if faculty is not None:
                professor = Professor.objects.filter(pk=int(faculty))[0]
            else:
                professor = request.user.professor

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
        context = super().get_context(request)
        faculty = request.GET.get('faculty', None)
        if faculty == None:
            context['professor'] = request.user
            context['datas'] = FacultyLoadModel.objects.filter(
                professor=request.user.professor,
                year=2020,
                semester='first'
            ).order_by('schedule__section__name')
            
        else:
            professor = Professor.objects.filter(pk=faculty)[0]
            context['professor'] = professor
            context['datas'] = FacultyLoadModel.objects.filter(professor=professor)

        return context

class FacultyLoading(Page):
    
    def serve(self, request):
        year = request.GET.get('year', None)
        sem = request.GET.get('sem', None)  
        content = request.GET.get('content', None)
        
        if content == 'table':
            print(content   )
            if year and sem:
                faculty = request.GET.get('faculty', None)

                if faculty is not None:
                    professor = Professor.objects.filter(pk=int(faculty))[0]
                else:
                    professor = request.user.professor

                data = FacultyLoadModel.objects.filter(
                    professor=professor,
                    year=int(year),
                    semester=sem
                ).order_by('schedule__section__name')

                return TemplateResponse(
                        request, 
                        'facultyload/faculty_loading_table_body.html',{
                            'datas' : data
                        }
                    )

        if content == 'schedule':
            if year and sem:
                faculty = request.GET.get('faculty', None)

                if faculty is not None:
                    professor = Professor.objects.filter(pk=int(faculty))[0]
                else:
                    professor = request.user.professor

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
        faculty = request.GET.get('faculty')
        if faculty == None:
            context['professor'] = request.user
            context['datas'] = FacultyLoadModel.objects.filter(
                professor=request.user.professor,
                year=2020,
                semester='first'
            ).order_by('schedule__section__name')
            
        else:
            professor = Professor.objects.filter(pk=faculty)[0]
            context['professor'] = professor
            context['datas'] = FacultyLoadModel.objects.filter(professor=professor)

        return context
