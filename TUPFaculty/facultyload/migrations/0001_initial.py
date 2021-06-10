# Generated by Django 3.1.8 on 2021-06-08 16:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('base', '0002_auto_20210609_0044'),
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
    ]

    operations = [
        migrations.CreateModel(
            name='FacultyLoad',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.page')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='FacultyLoading',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.page')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='FacultyLoadModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('professor', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='base.professor')),
                ('schedule', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='base.schedule')),
            ],
            options={
                'verbose_name': 'Faculty Loading',
                'verbose_name_plural': 'Faculty Loading',
            },
        ),
    ]
