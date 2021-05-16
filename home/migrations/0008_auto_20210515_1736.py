# Generated by Django 3.1.8 on 2021-05-15 17:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_auto_20210515_1722'),
    ]

    operations = [
        migrations.AlterField(
            model_name='schedule',
            name='ending_time',
            field=models.CharField(choices=[('7:00 AM', '7:00 AM'), ('8:00 AM', '8:00 AM'), ('9:00 AM', '9:00 AM'), ('10:00 AM', '10:00 AM'), ('11:00 AM', '11:00 AM'), ('12:00 AM', '12:00 AM'), ('1:00 PM', '1:00 PM'), ('2:00 PM', '2:00 PM'), ('3:00 PM', '3:00 PM'), ('4:00 PM', '4:00 PM'), ('5:00 PM', '5:00 PM'), ('6:00 PM', '6:00 PM')], default='2:00 PM', max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='schedule',
            name='start_time',
            field=models.CharField(choices=[('7:00 AM', '7:00 AM'), ('8:00 AM', '8:00 AM'), ('9:00 AM', '9:00 AM'), ('10:00 AM', '10:00 AM'), ('11:00 AM', '11:00 AM'), ('12:00 AM', '12:00 AM'), ('1:00 PM', '1:00 PM'), ('2:00 PM', '2:00 PM'), ('3:00 PM', '3:00 PM'), ('4:00 PM', '4:00 PM'), ('5:00 PM', '5:00 PM'), ('6:00 PM', '6:00 PM')], default='7:00 AM', max_length=20, null=True),
        ),
    ]