
from django.contrib.auth.models import Group

from wagtail.contrib.modeladmin.views import CreateView

from TUPFaculty.users.models import Professor

class ProfessorCreateView(CreateView):
    
    def form_valid(self, form):
        instance = form.save()
        
        professor = Group.objects.get(name='Professor')


        if instance.department_head: 
            head = Group.objects.get(name='Department Head')
            head.user_set.add(instance)
        
        professor.user_set.add(instance)
        
        return super().form_valid(form)  