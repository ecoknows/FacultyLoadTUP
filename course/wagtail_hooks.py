
from wagtail.contrib.modeladmin.options import (
    ModelAdmin,
    modeladmin_register
)
from .models import Course, Section, College, Department
from wagtail.contrib.modeladmin.views import CreateView, EditView

from TUPFaculty import StringResource, ALPHABET

class CustomCreateView(CreateView):

    def create_section(self, instance,section_cnt, str_year):
        for x in range(section_cnt):
            Section.objects.create(
                name=instance.abbreviation + '-' + str_year + ALPHABET[x] ,
                course=instance,
                year=int(str_year)
        )

    def form_valid(self, form):
        instance = form.save()
        self.create_section(
            instance=instance,
            section_cnt=instance.first_year_section,
            str_year='1'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.second_year_section,
            str_year='2'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.third_year_section,
            str_year='3'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.fourth_year_section,
            str_year='4'
        )

        return super().form_valid(form)
        
class CustomEditView(EditView):
    def edit_section(
        self,
        course,
        section_cnt,
        str_year
    ):
        filtered_section = Section.objects.filter(course=course, year=int(str_year))
        current_section_length = len(filtered_section)

        if current_section_length > section_cnt:
            Section.objects.filter(pk__gte=filtered_section[section_cnt].pk, year=int(str_year)).delete()
        elif current_section_length < section_cnt:
            updated_section_length = section_cnt - current_section_length
            for x in range(updated_section_length):
                Section.objects.create(
                    name=course.abbreviation + '-' + str_year + ALPHABET[x],
                    course=course
            )

    def form_valid(self, form):

        instance = form.save()

        self.edit_section(
            course=instance,
            section_cnt=instance.first_year_section,
            str_year='1'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.second_year_section,
            str_year='2'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.third_year_section,
            str_year='3'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.fourth_year_section,
            str_year='4'
        )

        print(instance.pk, self.model)
        return super().form_valid(form)   

class CourseAdmin(ModelAdmin):
    create_view_class = CustomCreateView
    edit_view_class = CustomEditView
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
    