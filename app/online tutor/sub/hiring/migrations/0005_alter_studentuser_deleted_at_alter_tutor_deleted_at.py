# Generated by Django 4.0 on 2022-01-03 05:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hiring', '0004_tutor_experience_tutor_qualfication'),
    ]

    operations = [
        migrations.AlterField(
            model_name='studentuser',
            name='deleted_at',
            field=models.DateTimeField(),
        ),
        migrations.AlterField(
            model_name='tutor',
            name='deleted_at',
            field=models.DateTimeField(),
        ),
    ]