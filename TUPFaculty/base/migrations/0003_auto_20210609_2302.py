# Generated by Django 3.1.8 on 2021-06-09 15:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0002_auto_20210609_0044'),
    ]

    operations = [
        migrations.AlterField(
            model_name='schedule',
            name='ending_time',
            field=models.CharField(choices=[('7', '7:00 AM'), ('8', '8:00 AM'), ('9', '9:00 AM'), ('10', '10:00 AM'), ('11', '11:00 AM'), ('12', '12:00 AM'), ('13', '1:00 PM'), ('14', '2:00 PM'), ('15', '3:00 PM'), ('16', '4:00 PM'), ('17', '5:00 PM'), ('18', '6:00 PM')], default='14', max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='schedule',
            name='start_time',
            field=models.CharField(choices=[('7', '7:00 AM'), ('8', '8:00 AM'), ('9', '9:00 AM'), ('10', '10:00 AM'), ('11', '11:00 AM'), ('12', '12:00 AM'), ('13', '1:00 PM'), ('14', '2:00 PM'), ('15', '3:00 PM'), ('16', '4:00 PM'), ('17', '5:00 PM'), ('18', '6:00 PM')], default='7', max_length=20, null=True),
        ),
    ]
