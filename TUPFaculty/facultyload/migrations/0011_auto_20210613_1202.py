# Generated by Django 3.1.8 on 2021-06-13 04:02

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('facultyload', '0010_auto_20210612_1731'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facultyloadmodel',
            name='professor',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='facultyload', to=settings.AUTH_USER_MODEL),
        ),
    ]
