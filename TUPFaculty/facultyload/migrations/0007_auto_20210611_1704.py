# Generated by Django 3.1.8 on 2021-06-11 17:04

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('facultyload', '0006_auto_20210611_1703'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facultyloadmodel',
            name='professor',
            field=models.ForeignKey(limit_choices_to={'department_head': False}, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to=settings.AUTH_USER_MODEL),
        ),
    ]
