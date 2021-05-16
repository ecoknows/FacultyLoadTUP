from django.db import models

from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    professor = models.ForeignKey('home.Professor', null=True, on_delete=models.CASCADE)
