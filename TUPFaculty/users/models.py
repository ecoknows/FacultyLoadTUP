from django.db import models

from django.contrib.auth.models import AbstractUser
from wagtail.snippets.models import register_snippet


from wagtail.admin.edit_handlers import (
    FieldPanel,
    InlinePanel,
    MultiFieldPanel,
    StreamFieldPanel,
    ObjectList,
    TabbedInterface,
)

@register_snippet
class Professor(AbstractUser):
    department_head = models.BooleanField(default=False)
    middle_name = models.CharField(max_length=20, null=True)
    
    time_in = models.DateTimeField(null=True)
    time_out = models.DateTimeField(null=True)

    
    department = models.ForeignKey(
        'course.Department', 
        null=True, 
        on_delete=models.SET_NULL
    )

    panels = [
        MultiFieldPanel([
            FieldPanel('first_name'),
            FieldPanel('middle_name'),
            FieldPanel('last_name'),
            FieldPanel('department'),
            FieldPanel('department_head'),
        ], heading='Faculty Information'),
    ]
    
    def prof_code(self):
        year = str(self.date_joined.year - 2000)
        college = str(self.department.college.pk + 50)
        department = str(self.department.pk + 30)
        return 'TUPM' + '-' + year + '-' + college + department + str(self.pk)

    def prof_name(self):
        return 'Prof. ' + self.last_name  + ', '  + self.first_name +' ' +self.middle_name[0]+ '.'

    def save(self, *args, **kwargs):
        if self.is_superuser is False:
            super().save(*args, **kwargs)
            old_user = Professor.objects.get(pk=self.pk)

            if old_user.first_name != self.first_name or old_user.last_name != self.last_name:
                self.email = self.first_name + '.' + self.last_name + '@tup.edu.ph'
            if old_user.last_name != self.last_name:
                self.set_password(self.last_name.upper())
            if old_user.date_joined.year != self.date_joined.year or old_user.department != self.department or old_user.department.college != self.department.college:
                self.username = self.prof_code()
                
        super().save(*args, **kwargs)
        
    class Meta:
        verbose_name = 'Professor'
        verbose_name_plural = 'Professors'
