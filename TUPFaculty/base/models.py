from django.db import models
from django import forms

from wagtail.core.models import Page, Orderable
from wagtail.search import index
from wagtail.core.fields import StreamField
from wagtail.snippets.edit_handlers import SnippetChooserPanel
from wagtail.snippets.models import register_snippet
from wagtail.search import index
from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    StreamFieldPanel,
    ObjectList,
    TabbedInterface,
)

from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from TUPFaculty import DAY, TIME
from django.http import HttpResponseRedirect
from django.utils import timezone, dateformat


        
@register_snippet
class Schedule(models.Model, index.Indexed):
    
    
    day = models.CharField(
        max_length=20,
        null=True,
        choices=DAY,
        default='Monday'
    )
    
    start_time = models.IntegerField(
        choices=TIME,
        default=7
    )
    
    ending_time = models.IntegerField(
        choices=TIME,
        default=14
    )

    subject = models.ForeignKey(
        'Subject',
        null=True,
        on_delete=models.CASCADE
    )
    
    room = models.ForeignKey(
        'Room',
        null=True,
        on_delete=models.CASCADE
    )
    
    section = models.ForeignKey(
        'course.Section',
        null=True,
        on_delete=models.CASCADE
    )

    def lec(self):
        return self.subject.lec

    def lab(self):
        return self.subject.lab

    def units(self):
        return self.subject.units
    

    panels = [
        MultiFieldPanel([
            FieldPanel("day"),
            FieldPanel('start_time'),
            FieldPanel('ending_time'),
        ], 'Set Time'),
        MultiFieldPanel([
            SnippetChooserPanel("subject"),
            SnippetChooserPanel('section'),
            SnippetChooserPanel('room'),
        ], 'Assign here'),
    ]
    
    
    search_fields = [
        index.SearchField('lec'),
        index.SearchField('lab'),
        index.SearchField('units'),
        index.SearchField('day'),
        index.SearchField('start_time'),
        index.SearchField('ending_time'),
    ]
    
    
    def __str__(self):
        return self.section.name + '  | ' +  self.subject.description + ' | ' +  str(self.subject.lec) + ' | ' + str(self.subject.lab) + ' | ' + str(self.subject.units) + ' | ' + self.day + ' - ' +  dict(TIME).get(self.start_time) + ' to ' + dict(TIME).get(self.ending_time) 
    

@register_snippet
class Subject(models.Model, index.Indexed):
    subject_code = models.CharField(max_length=50, null=True)
    description = models.TextField(max_length=150, null=True)
    department = models.ForeignKey('course.Department', null=True, on_delete=models.CASCADE)
    
    lec = models.IntegerField(null=True)
    lab = models.IntegerField(null=True)
    units = models.IntegerField(null=True)
    
    panels = [
        MultiFieldPanel([
            FieldPanel('subject_code'),
            FieldPanel('description'),
            FieldPanel('department'),
        ], heading='Requirements for Subject'),
        MultiFieldPanel([
            FieldPanel('lec'),
            FieldPanel('lab'),
        ], 'Additional info here'),
    ]

    def save(self):
        if self.units is None:
            self.units = self.lab + self.lec
        super().save()
    
    
    def __str__(self):
        return '( '+ self.subject_code + ' ) ' + self.description


@register_snippet
class Room(models.Model, index.Indexed):
    name = models.CharField(max_length=50, null=True)

    def __str__(self):
        return self.name


class TimeLoad(Page):
    max_count = 1

    def serve(self, request):
        time =  request.POST.get('time', None)
        if time:
            if request.user.time_in and request.user.time_out:
                request.user.time_out = None
                request.user.time_in = timezone.now()
                request.user.save()
            elif request.user.time_in is None:
                request.user.time_in = timezone.now()
                request.user.save()
            else:
                request.user.time_out = timezone.now()
                request.user.save()

            
        return super().serve(request)


    def get_context(self, request):
        from TUPFaculty.depthead.models import DepartmentHeadIndexPage
        context = super().get_context(request)
        
        for group in request.user.groups.all():
            if str(group) == 'Department Head':
                context['department_head_page'] = DepartmentHeadIndexPage.objects.all().first()
                
        return context 



class BasePage(Page):
    max_count = 1

    def serve(self, request):
        from TUPFaculty.facultyload.models import FacultyLoad
        if request.user.is_superuser:
            return HttpResponseRedirect('/admin/')
        if request.user.is_authenticated == False:
            return HttpResponseRedirect('/login/')
        for group in request.user.groups.all():
            if str(group) == 'Department Head':
                return HttpResponseRedirect(self.get_children().live().type(FacultyLoad).first().url)
            if str(group) == 'Professor':
                return HttpResponseRedirect(self.get_children().live().type(FacultyLoad).first().url)

        return HttpResponseRedirect('/logout')
    