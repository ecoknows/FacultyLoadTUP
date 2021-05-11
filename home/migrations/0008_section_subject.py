# Generated by Django 3.1.8 on 2021-04-30 15:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_delete_tuphome'),
    ]

    operations = [
        migrations.CreateModel(
            name='Section',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Subject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('main', models.BooleanField(default=False)),
                ('subject_code', models.CharField(max_length=10)),
                ('description', models.TextField(max_length=250)),
                ('lec', models.IntegerField(default=0)),
                ('lab', models.IntegerField(default=0)),
                ('units', models.IntegerField(default=0)),
                ('section', models.TextField(max_length=250)),
                ('schedule', models.TextField(max_length=250)),
                ('_type', models.CharField(choices=[('regular', 'Regular'), ('part-timer', 'Part Timer')], max_length=250)),
            ],
        ),
    ]
