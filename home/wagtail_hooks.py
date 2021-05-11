from django.utils.html import format_html
from django.templatetags.static import static

from wagtail.core import hooks
from wagtail.contrib.modeladmin.options import (
    ModelAdmin, modeladmin_register)

from .models import Professors, Subjects, Sections, AdminLoadingFaculty


class ProfessorsAdmin(ModelAdmin):
    model = Professors
    menu_label = 'Professors'
    menu_icon = 'group'
    menu_order = 100
    list_display = ('code', 'professor_name')
    list_filter = ('college',)
    search_fields = ('code', 'professor_name')


modeladmin_register(ProfessorsAdmin)


class FacultyLoadingAdmin(ModelAdmin):
    model = AdminLoadingFaculty
    menu_label = 'Faculty Loading'
    menu_icon = 'form'
    menu_order = 100
    list_display = (
        'professor',
    )
    # list_filter = (
    #     '_main',
    #     '_type',
    # )
    # search_fields = (
    #     '_main',
    #     'subject_code',
    #     'lec',
    #     'lab'
    #     'units',
    #     '_type',
    # )


modeladmin_register(FacultyLoadingAdmin)


class SubjectAdmin(ModelAdmin):
    model = Subjects
    menu_label = 'Subjects'
    menu_icon = 'form'
    menu_order = 100
    list_display = (
        'subject_code',
        'description',
    )
    list_filter = (
        'subject_code',
        'description',
    )
    search_fields = (
        'subject_code',
        'description',
    )


modeladmin_register(SubjectAdmin)


class SectionAdmin(ModelAdmin):
    model = Sections
    menu_label = 'Section'
    menu_icon = 'snippet'
    menu_order = 100
    list_display = ('name', 'year_level')
    list_filter = ('year_level',)
    search_fields = ('name', 'year_level')


modeladmin_register(SectionAdmin)


@hooks.register("insert_global_admin_css")
def global_admin_css():
    return format_html('<link rel="stylesheet" href="{}">', static("css/admin.css"))
