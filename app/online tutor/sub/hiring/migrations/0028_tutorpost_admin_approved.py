# Generated by Django 4.0.1 on 2022-01-31 04:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hiring', '0027_remove_tutorpost_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='tutorpost',
            name='admin_approved',
            field=models.BooleanField(default=False),
        ),
    ]
