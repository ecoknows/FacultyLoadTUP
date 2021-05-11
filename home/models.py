from django.db import models

from wagtail.core.models import Page, Orderable
from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    StreamFieldPanel
)
from django import forms
from wagtail.search import index
from wagtail.core.fields import StreamField

from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel
from wagtail.snippets.edit_handlers import SnippetChooserPanel

from wagtail.snippets.models import register_snippet
from .blocks import SubjectBlock


class AdminLoadingFaculty(models.Model):

    professor = models.ForeignKey(
        "home.Professors",
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    subject = StreamField([
        ('Subject', SubjectBlock()),
    ], null=True)

    panels = [
        SnippetChooserPanel("professor"),
        StreamFieldPanel('subject'),
    ]

    class Meta:
        verbose_name = 'Faculty Loading'
        verbose_name_plural = 'Faculty Loading'


@register_snippet
class Professors(models.Model):
    code = models.CharField(max_length=200, null=True)
    professor_name = models.CharField(max_length=200, null=True)
    college = models.CharField(max_length=200, null=True)

    panels = [
        MultiFieldPanel([
            FieldPanel('code'),
            FieldPanel('professor_name'),
            FieldPanel('college'),
        ], heading='Faculty Information')
    ]

    def __str__(self):
        return self.professor_name

    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professors'


class Subjects(models.Model):
    subject_code = models.CharField(max_length=10)
    description = models.TextField(max_length=250)
    panels = [
        MultiFieldPanel([
            FieldPanel('subject_code'),
            FieldPanel('description'),
        ], heading='Identification'),
    ]


class Sections(models.Model):
    name = models.CharField(max_length=10, null=True)
    year_level = models.CharField(max_length=50, default='first-year', null=True, choices=([
        ('first-year', '1st Year'), ('second-year',
                                     'Second Year'), ('third-year', '3rd Year')
    ]))

    panels = [
        MultiFieldPanel([
            FieldPanel('name'),
            FieldPanel('year_level',  widget=forms.RadioSelect),
        ], heading='Identification'),
    ]


class HomePage(Page):

    def query_table(self):
        return Professors.objects.all()


class FacultyLoad(Page):
    pass


class LoadingFaculty(Page):

    def get_context(self, request):
        context = super().get_context(request)
        # Filter by tag
        _pk = request.GET.get('faculty')

        context['data_faculty'] = AdminLoadingFaculty.objects.get(pk=_pk)
        return context
