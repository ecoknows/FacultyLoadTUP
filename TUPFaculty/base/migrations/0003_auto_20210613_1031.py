# Generated by Django 3.1.8 on 2021-06-13 02:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0002_auto_20210613_1030'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subject',
            name='lab',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='subject',
            name='lec',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='subject',
            name='units',
            field=models.IntegerField(null=True),
        ),
    ]