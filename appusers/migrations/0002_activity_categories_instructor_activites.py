# Generated by Django 4.2.2 on 2023-06-29 11:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('appusers', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Activity_categories',
            fields=[
                ('category_id', models.IntegerField(primary_key=True, serialize=False)),
                ('study_area', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Instructor',
            fields=[
                ('instructor_id', models.IntegerField(primary_key=True, serialize=False)),
                ('instructor_name', models.CharField(max_length=100)),
                ('instructor_email', models.EmailField(max_length=200, unique=True)),
                ('instructor_address', models.CharField(max_length=100)),
                ('instructor_gender', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Activites',
            fields=[
                ('activity_id', models.IntegerField(primary_key=True, serialize=False)),
                ('activity_name', models.CharField(max_length=100)),
                ('activity_description', models.CharField(max_length=100)),
                ('activity_date', models.DateField(auto_now=True)),
                ('category_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appusers.activity_categories')),
                ('instructor_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appusers.instructor')),
            ],
        ),
    ]