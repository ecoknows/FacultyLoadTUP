from django.utils.html import format_html
from django.templatetags.static import static
from django.contrib.auth.models import Group

from wagtail.core import hooks
from wagtail.contrib.modeladmin.views import CreateView
from wagtail.contrib.modeladmin.options import (
    ModelAdmin,
    modeladmin_register
)

from TUPFaculty.course.models import Course, Section, College, Department
from TUPFaculty.course.views import CourseCreateView, CourseEditView
from TUPFaculty import StringResource
from TUPFaculty.facultyload.models import FacultyLoadModel
from TUPFaculty.base.views import ProfessorCreateView
from TUPFaculty.users.models import Professor
from TUPFaculty.base.models import (
    Schedule,
    Subject,
    Room,
)


class CourseAdmin(ModelAdmin):
    create_view_class = CourseCreateView
    edit_view_class = CourseEditView
    model = Course
    menu_label = 'Course'
    menu_icon = 'form'
    menu_order = 100
    
    list_display = ('name', 'abbreviation')
modeladmin_register(CourseAdmin)


class CollegeAdmin(ModelAdmin):
    model = College
    menu_label = 'College'
    menu_icon = 'form'
    menu_order = 100
modeladmin_register(CollegeAdmin)
    
    
class DepartmentAdmin(ModelAdmin):
    model = Department
    menu_label = 'Department'
    menu_icon = 'form'
    menu_order = 100
modeladmin_register(DepartmentAdmin)

  

class ProfessorAdmin(ModelAdmin):
    model = Professor
    create_view_class = ProfessorCreateView
    group_name = StringResource.PROFESSOR
    menu_label = 'Professor'
    menu_icon = 'group'
    menu_order = 100
    
    def get_queryset(self, request):
        """
        Returns a QuerySet of all model instances that can be edited by the
        admin site.
        """
        qs = self.model._default_manager.get_queryset()
        ordering = self.get_ordering(request)
        if ordering:
            qs = qs.order_by(*ordering)
        return qs.filter(is_superuser=False)


        
    # list_display = ('prof_code', 'prof_name', 'time_in', 'time_out')
    # list_filter = ('department_head',)
modeladmin_register(ProfessorAdmin)


class FacultyLoadAdmin(ModelAdmin):
    model = FacultyLoadModel
    menu_label = 'Faculty Load'
    menu_icon = 'form'
    menu_order = 100
    list_display = ('professor', 'schedule','approved')
    list_filter = ('approved',)
modeladmin_register(FacultyLoadAdmin)

class ScheduleAdmin(ModelAdmin):
    model = Schedule
    menu_label = 'Schedule'
    menu_icon = 'form'
    menu_order = 100
    list_display = ('subject', 'section','start_time','ending_time', 'room', 'lab', 'lec', 'units')
modeladmin_register(ScheduleAdmin)


class SubjectAdmin(ModelAdmin):
    model = Subject
    menu_label = 'Subject'
    menu_icon = 'form'
    menu_order = 100
    list_display = (
        'subject_code',
        'description',
        'course'
    )
    list_search = (
        'subject_code',
        'description',
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

