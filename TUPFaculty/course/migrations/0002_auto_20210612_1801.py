# Generated by Django 3.1.8 on 2021-06-12 18:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='first_year_section_non_stem',
            field=models.IntegerField(default=0, verbose_name='1st Year'),
        ),
        migrations.AddField(
            model_name='course',
            name='fourth_year_section_non_stem',
            field=models.IntegerField(default=0, verbose_name='4th Year'),
        ),
        migrations.AddField(
            model_name='course',
            name='second_year_section_non_stem',
            field=models.IntegerField(default=0, verbose_name='2nd Year'),
        ),
        migrations.AddField(
            model_name='course',
            name='third_year_section_non_stem',
            field=models.IntegerField(default=0, verbose_name='3rdYear'),
        ),
    ]