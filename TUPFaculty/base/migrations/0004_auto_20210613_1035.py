# Generated by Django 3.1.8 on 2021-06-13 02:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0003_auto_20210613_1011'),
        ('base', '0003_auto_20210613_1031'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='subject',
            name='course',
        ),
        migrations.AddField(
            model_name='subject',
            name='deparment',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='course.department'),
        ),
    ]
