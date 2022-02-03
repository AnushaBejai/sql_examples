# Generated by Django 4.0.1 on 2022-01-28 11:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hiring', '0020_remove_tutorpost_tutorpost'),
    ]

    operations = [
        migrations.CreateModel(
            name='studentpost',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_Date', models.DateTimeField(auto_now_add=True, verbose_name='created_date')),
                ('updated_Date', models.DateTimeField(auto_now=True, verbose_name='updated_date')),
                ('subject', models.CharField(max_length=200, null=True)),
                ('level', models.CharField(choices=[('lower primary', 'lower primary'), ('higher primary', 'higher primary'), ('high school', 'high school'), ('graduation', 'graduation')], max_length=200, null=True)),
                ('description', models.CharField(max_length=2000, null=True)),
                ('salary', models.IntegerField(null=True)),
                ('experience', models.IntegerField(null=True)),
                ('phone', models.CharField(max_length=12, null=True)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AlterField(
            model_name='students',
            name='mobile',
            field=models.CharField(max_length=12, null=True),
        ),
    ]
