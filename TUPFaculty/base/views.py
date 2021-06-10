
from django.contrib.auth.models import Group

from wagtail.contrib.modeladmin.views import CreateView

from TUPFaculty.users.models import User

class ProfessorCreateView(CreateView):
    
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