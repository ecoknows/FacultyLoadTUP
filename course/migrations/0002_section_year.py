# Generated by Django 3.1.8 on 2021-05-15 11:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='section',
            name='year',
            field=models.IntegerField(default=1),
        ),
    ]
