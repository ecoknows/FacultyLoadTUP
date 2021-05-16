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
from wagtail.contrib.modeladmin.views import CreateView
from TUPFaculty import StringResource
from users.models import User

from django.contrib.auth.models import Group
class CustomView(CreateView):
    
    def form_valid(self, form):
        instance = form.save()
        
        user = User.objects.create_user(
            username=instance.prof_code(),
            first_name= instance.first_name,
            last_name= instance.last_name,
            password=instance.last_name.upper(),
            professor=instance,
            email=instance.first_name + '.' + instance.last_name + '@tup.edu.ph',
        )
            
        
        group = Group.objects.get(name=self.model_admin.group_name)
        
        group.user_set.add(user)
        
        return super().form_valid(form)    

class ProfessorAdmin(ModelAdmin):
    model = Professor
    create_view_class = CustomView
    group_name = StringResource.PROFESSOR
    menu_label = 'Professor'
    menu_icon = 'group'
    menu_order = 100
    list_display = ('prof_code','prof_name', 'time_in', 'time_out')
    # list_filter = ('college',)
    # search_fields = ('code', 'professor_name')
modeladmin_register(ProfessorAdmin)


class FacultyLoadAdmin(ModelAdmin):
    model = FacultyLoadModel
    menu_label = 'Faculty Load'
    menu_icon = 'form'
    menu_order = 100
    list_display = ('professor', 'schedule')

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

