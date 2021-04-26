from django.utils.html import format_html
from django.templatetags.static import static

from wagtail.core import hooks
from wagtail.contrib.modeladmin.options import (
    ModelAdmin, modeladmin_register)

from .models import Faculty


class FacultyAdmin(ModelAdmin):
    model = Faculty
    menu_label = 'Faculty'
    menu_icon = 'group'
    menu_order = 100
    list_display = ('code', 'faculty_name')
    list_filter = ('college',)
    search_fields = ('code', 'faculty_name')


modeladmin_register(FacultyAdmin)


@hooks.register("insert_global_admin_css")
def global_admin_css():
    return format_html('<link rel="stylesheet" href="{}">', static("css/admin.css"))
