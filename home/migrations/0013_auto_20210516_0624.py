# Generated by Django 3.1.8 on 2021-05-16 06:24

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('home', '0012_professor_code'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='professor',
            name='code',
        ),
        migrations.AddField(
            model_name='professor',
            name='user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]