from django.utils.html import format_html
from django.templatetags.static import static

from wagtail.core import hooks
from wagtail.contrib.modeladmin.options import (
    ModelAdmin, modeladmin_register)

from .models import (
    Professor,
    FacultyLoadModel,
    Schedule,
    Subject,
    Room,
)
from wagtail.core import hooks

class ProfessorAdmin(ModelAdmin):
    model = Professor
    menu_label = 'Professor'
    menu_icon = 'group'
    menu_order = 100
    list_display = ('code', 'professor_name')
    list_filter = ('college',)
    search_fields = ('code', 'professor_name')
modeladmin_register(ProfessorAdmin)


class FacultyLoadAdmin(ModelAdmin):
    model = FacultyLoadModel
    menu_label = 'Faculty Load'
    menu_icon = 'form'
    menu_order = 100

modeladmin_register(FacultyLoadAdmin)

class ScheduleAdmin(ModelAdmin):
    model = Schedule
    menu_label = 'Schedule'
    menu_icon = 'form'
    menu_order = 100
modeladmin_register(ScheduleAdmin)


class SubjectAdmin(ModelAdmin):
    model = Subject
    menu_label = 'Subject'
    menu_icon = 'form'
    menu_order = 100
    list_display = (
        'subject_code',
        'course'
    )
    list_search = (
        'subject_code',
        'course'
    )
    list_filter = ('course',)
modeladmin_register(SubjectAdmin)

class RoomAdmin(ModelAdmin):
    model = Room
    menu_label = 'Room'
    menu_icon = 'form'
    menu_order = 100
modeladmin_register(RoomAdmin)



@hooks.register("insert_global_admin_css")
def global_admin_css():
    return format_html('<link rel="stylesheet" href="{}">', static("css/admin.css"))


@hooks.register("construct_main_menu")
def hide_documents(request, menu_items):
    menu_items[:] = [item for item in menu_items if item.name != "images"]

@hooks.register("construct_main_menu")
def hide_documents(request, menu_items):
    menu_items[:] = [item for item in menu_items if item.name != "documents"]

@hooks.register("construct_main_menu")
def hide_documents(request, menu_items):
    menu_items[:] = [item for item in menu_items if item.name != "snippets"]

@hooks.register("construct_main_menu")
def hide_documents(request, menu_items):
    menu_items[:] = [item for item in menu_items if item.name != "reports"]

