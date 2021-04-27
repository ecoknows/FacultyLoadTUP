from django.db import models

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import (
    FieldPanel,
    MultiFieldPanel,
)


class Faculty(models.Model):
    code = models.CharField(max_length=200, null=True)
    faculty_name = models.CharField(max_length=200, null=True)
    college = models.CharField(max_length=200, null=True)

    panels = [
        MultiFieldPanel([
            FieldPanel('code'),
            FieldPanel('faculty_name'),
            FieldPanel('college'),
        ], heading='Faculty Information')
    ]

    def __str__(self):
        return self.faculty_name

    class Meta:
        verbose_name = 'Faculty'
        verbose_name_plural = 'Faculty'


class HomePage(Page):
    pass

class TupHome(Page):

    def query_table(self):
        return Faculty.objects.all()

class FacultyLoad(Page):
    max_count = 1
    pass


class LoadingFaculty(Page):
    max_count = 1
    pass
