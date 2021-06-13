from django.db import models
from django.db.models.deletion import SET_NULL
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
        on_delete=models.CASCADE,
        related_name='+'
    )

    non_stem = models.BooleanField(default=False)
    
    search_fields = [
        index.SearchField('name'),
        index.SearchField('course'),
    ]
    
    def __str__(self):
        return '( ' + self.name  + ' ) '+ self.course.name


@register_snippet
class Course(models.Model):
    name = models.CharField(max_length=50, null=True)
    abbreviation = models.CharField(max_length=50, null=True)

    first_year_section = models.IntegerField(default=0, verbose_name='1st Year')
    second_year_section = models.IntegerField(default=0, verbose_name='2nd Year')
    third_year_section = models.IntegerField(default=0, verbose_name='3rdYear')
    fourth_year_section = models.IntegerField(default=0, verbose_name='4th Year')
    
    
    first_year_section_non_stem = models.IntegerField(default=0, verbose_name='1st Year')
    second_year_section_non_stem = models.IntegerField(default=0, verbose_name='2nd Year')
    third_year_section_non_stem = models.IntegerField(default=0, verbose_name='3rdYear')
    fourth_year_section_non_stem = models.IntegerField(default=0, verbose_name='4th Year')


    description_panel = [
        MultiFieldPanel([
            FieldPanel('name'),
            FieldPanel('abbreviation'),
        ], heading='How many Sections')
    ]

    section_panel = [
        MultiFieldPanel([
            FieldPanel('first_year_section'),
            FieldPanel('second_year_section'),
            FieldPanel('third_year_section'),
            FieldPanel('fourth_year_section'),
        ], heading='Course Sections'),
        
        MultiFieldPanel([
            FieldPanel('first_year_section_non_stem'),
            FieldPanel('second_year_section_non_stem'),
            FieldPanel('third_year_section_non_stem'),
            FieldPanel('fourth_year_section_non_stem',help_text='how many section'),
        ], heading='How many Non-Stem Sections')
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

class College(models.Model):
    name = models.CharField(max_length=50, null=True)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'College'
        verbose_name_plural = 'Colleges'
        ordering = [
            'name'
        ]
        
class Department(models.Model):
    
    name = models.CharField(max_length=50, null=True)
    college = models.ForeignKey('course.College',null=True,on_delete=models.SET_NULL)    
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name = 'Department'
        verbose_name_plural = 'Departments'
        ordering = [
            'name'
        ]
        
    