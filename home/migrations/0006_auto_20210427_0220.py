# Generated by Django 3.1.8 on 2021-04-27 02:20

from django.conf import settings
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('wagtailforms', '0004_add_verbose_name_plural'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('contenttypes', '0002_remove_content_type_name'),
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
        ('home', '0005_tuphome'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='LoadingPage',
            new_name='FacultyLoad',
        ),
        migrations.RenameModel(
            old_name='FacultyLoadPage',
            new_name='LoadingFaculty',
        ),
    ]