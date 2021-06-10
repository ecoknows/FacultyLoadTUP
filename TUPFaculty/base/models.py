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

@register_snippet
class Professor(models.Model, index.Indexed):
    first_name = models.CharField(max_length=50, null=True)
    middle_name = models.CharField(max_length=1, null=True)
    last_name = models.CharField(max_length=50, null=True)
    
    
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    
    time_in = models.CharField(max_length=50, null=True)
    time_out = models.CharField(max_length=50, null=True)
    
    department = models.ForeignKey(
        'course.Department', 
        null=True, 
        on_delete=models.SET_NULL
    )

    panels = [
        MultiFieldPanel([
            FieldPanel('first_name'),
            FieldPanel('middle_name'),
            FieldPanel('last_name'),
            FieldPanel('department'),
        ], heading='Faculty Information'),
    ]
    
    def prof_code(self):
        year = str(self.created_at.year - 2000)
        college = str(self.department.college.pk + 50)
        department = str(self.department.pk + 30)
        return 'TUPM' + '-' + year + '-' + college + department + str(self.pk)
    def prof_name(self):
        return 'Prof. ' + self.last_name + ', ' +  self.first_name + ' ' + self.middle_name + '.'

    def __str__(self):
        return self.prof_name()

    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professors'

        
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
    
    lec = models.IntegerField(default=0)
    lab = models.IntegerField(default=0)
    units = models.IntegerField(default=0)

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
        MultiFieldPanel([
            FieldPanel('lec'),
            FieldPanel('lab'),
            FieldPanel('units'),
        ], 'Additional info here'),
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
        return self.section.name + '  | ' +  self.subject.description + ' | ' +  str(self.lec) + ' | ' + str(self.lab) + ' | ' + str(self.units) + ' | ' + self.day + ' - ' +  dict(TIME).get(self.start_time) + ' to ' + dict(TIME).get(self.ending_time) 
    

@register_snippet
class Subject(models.Model, index.Indexed):
    subject_code = models.CharField(max_length=50, null=True)
    description = models.TextField(max_length=150, null=True)
    course = models.ForeignKey('course.Course', null=True, on_delete=models.CASCADE)


    panels = [
        MultiFieldPanel([
            FieldPanel('subject_code'),
            FieldPanel('description'),
            FieldPanel('course'),
        ], heading='Requirements for Subject')
    ]
    
    
    def __str__(self):
        return '( '+ self.subject_code + ' ) ' + self.description


@register_snippet
class Room(models.Model, index.Indexed):
    name = models.CharField(max_length=50, null=True)

    def __str__(self):
        return self.name


class TimeLoad(Page):
    def serve(self, request):
        if "hatdog" in request.POST:
            print('das')
        else:
            # Display event page as usual
            return super().serve(request)

class BasePage(Page):
    max_count = 1
    
    def get_context(self, request):
        context = super().get_context(request)
        context['query_table'] = Professor.objects.all()
        return context

    def serve(self, request):
        if request.user.is_authenticated == False:
            return HttpResponseRedirect('/login/')
        for group in request.user.groups.all():
            if str(group) == 'Professor':
                return HttpResponseRedirect('/faculty-load/')
        return super().serve(request)
    