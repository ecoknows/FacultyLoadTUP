# Generated by Django 3.1.8 on 2021-06-10 15:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0005_auto_20210610_0036'),
        ('facultyload', '0004_auto_20210609_1522'),
    ]

    operations = [
        migrations.AlterField(
            model_name='facultyloadmodel',
            name='schedule',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='facultyload', to='base.schedule'),
        ),
    ]
