from django.db import models
from wagtail.snippets.models import register_snippet
from wagtail.admin.edit_handlers import (
    FieldPanel,
    MultiFieldPanel,
    ObjectList,
    TabbedInterface,
)
from TUPFaculty import StringResource
from wagtail.search import index
# Create your models here.

@register_snippet
class Section(models.Model, index.Indexed):

    year = models.IntegerField(default=1)

    name = models.CharField(max_length=100)
    course = models.ForeignKey(
        'course.Course',
        null=True, 
        on_delete=models.SET_NULL,
        related_name='+'
    )
    
    def __str__(self):
        return self.name


@register_snippet
class Course(models.Model):
    name = models.CharField(max_length=50, null=True)
    abbreviation = models.CharField(max_length=50, null=True)

    first_year_section = models.IntegerField(default=0, verbose_name='1st Year')
    second_year_section = models.IntegerField(default=0, verbose_name='2nd Year')
    third_year_section = models.IntegerField(default=0, verbose_name='3rdYear')
    fourth_year_section = models.IntegerField(default=0, verbose_name='4th Year')

    description_panel = [
        MultiFieldPanel([
            FieldPanel('name'),
            FieldPanel('abbreviation'),
        ], heading='Course Name')
    ]

    section_panel = [
        MultiFieldPanel([
            FieldPanel('first_year_section', help_text='how many section'),
            FieldPanel('second_year_section', help_text='how many section'),
            FieldPanel('third_year_section', help_text='how many section'),
            FieldPanel('fourth_year_section',help_text='how many section'),
        ], heading='Course Sections')
    ]
    
    edit_handler = TabbedInterface(
        [
            ObjectList(description_panel, heading=StringResource.COURSE),
            ObjectList(section_panel, heading=StringResource.SECTION),
        ]
    )

    def __str__(self):
        return self.name
        
    class Meta:
        verbose_name = 'Course'
        verbose_name_plural = 'Courses'
        ordering = [
            'name'
        ]
