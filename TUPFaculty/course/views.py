
from wagtail.contrib.modeladmin.views import CreateView, EditView

from TUPFaculty.course.models import Course, Section, College, Department
from TUPFaculty import StringResource, ALPHABET

class CourseCreateView(CreateView):

    def create_section(self, instance,section_cnt, str_year, extra=''):
        for x in range(section_cnt):
            Section.objects.create(
                name=instance.abbreviation + '-' + str_year + ALPHABET[x] + extra,
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
        
        ## NON STEM
        
        self.create_section(
            instance=instance,
            section_cnt=instance.first_year_section_non_stem,
            str_year='1',
            extra='-NS'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.second_year_section_non_stem,
            str_year='2',
            extra='-NS'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.third_year_section_non_stem,
            str_year='3',
            extra='-NS'
        )
        
        self.create_section(
            instance=instance,
            section_cnt=instance.fourth_year_section_non_stem,
            str_year='4',
            extra='-NS'
        )


        return super().form_valid(form)
        
class CourseEditView(EditView):
    def edit_section(
        self,
        course,
        section_cnt,
        str_year,
        extra='',
    ):
        filtered_section = Section.objects.filter(course=course, year=int(str_year))
        current_section_length = len(filtered_section)

        if current_section_length > section_cnt:
            Section.objects.filter(pk__gte=filtered_section[section_cnt].pk, year=int(str_year)).delete()
        elif current_section_length < section_cnt:
            updated_section_length = section_cnt - current_section_length
            for x in range(updated_section_length):
                Section.objects.create(
                    year=int(str_year),
                    name=course.abbreviation + '-' + str_year + ALPHABET[x] + extra,
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
        
        
        ## NON STEM
        
        
        self.edit_section(
            course=instance,
            section_cnt=instance.first_year_section_non_stem,
            str_year='1',
            extra='-NS'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.second_year_section_non_stem,
            str_year='2',
            extra='-NS'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.third_year_section_non_stem,
            str_year='3',
            extra='-NS'
        )
        self.edit_section(
            course=instance,
            section_cnt=instance.fourth_year_section_non_stem,
            str_year='4',
            extra='-NS'
        )
        

        return super().form_valid(form)   
