from django.db import models
from django import forms

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    StreamFieldPanel,
    ObjectList,
    TabbedInterface,
)
from django import forms
from wagtail.search import index
from wagtail.core.fields import StreamField

from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from wagtail.snippets.edit_handlers import SnippetChooserPanel

from wagtail.snippets.models import register_snippet
from wagtail.search import index


class Professor(models.Model):
    code = models.CharField(max_length=200, null=True)
    professor_name = models.CharField(max_length=200, null=True)

    personal_info_panel = [
        MultiFieldPanel([
            FieldPanel('code'),
            FieldPanel('professor_name'),
        ], heading='Faculty Information')
    ]
    
    edit_handler = TabbedInterface(
        [
         ObjectList(personal_info_panel, heading="Personal Info"),
        ]
    )


    def __str__(self):
        return self.professor_name

    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professors'


class FacultyLoadModel(models.Model):

    professor = models.ForeignKey(
        "home.Professor",
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )
    
    schedule = models.ForeignKey(
        "home.Schedule",
        null=True,
        on_delete=models.CASCADE,
    )

    panels = [
        SnippetChooserPanel("professor"),
        SnippetChooserPanel("schedule"),
    ]


    class Meta:
        verbose_name = 'Faculty Loading'
        verbose_name_plural = 'Faculty Loading'

class Schedule(models.Model):
    lec = models.IntegerField(default=0)
    lab = models.IntegerField(default=0)
    units = models.IntegerField(default=0)

    subject = models.ForeignKey(
        'home.Subject',
        null=True,
        on_delete=models.CASCADE
    )
    
    room = models.ForeignKey(
        'home.Room',
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


@register_snippet
class Subject(models.Model):
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

@register_snippet
class Room(models.Model):
    name = models.CharField(max_length=50, null=True)

    def __str__(self):
        return self.name


class FacultyLoad(Page):
    pass


class FacultyLoading(Page):
    pass

class HomePage(Page):
    pass