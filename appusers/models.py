from django.db import models
from django.core.validators import RegexValidator
from datetime import datetime
from django.utils import timezone


now = timezone.now()

class User(models.Model):
    username = models.CharField(max_length=200, verbose_name='Username')
    first_name = models.CharField(max_length=100, verbose_name='First Name')
    last_name = models.CharField(max_length=100, verbose_name='Last Name')
    user_email = models.EmailField(unique=True, max_length=200, verbose_name='Email')
    user_password = models.CharField(max_length=50, verbose_name='Password')
    
    def __str__(self):
        return self.user_email
class Activity_categories(models.Model):
    category_id = models.IntegerField(primary_key=True)
    study_area = models.CharField(max_length=100)
    
    def __str__(self):
        return self.category_id

class Instructor(models.Model):
    instructor_id = models.IntegerField(primary_key=True)
    instructor_name = models.CharField(max_length=100)
    instructor_email = models.EmailField(unique=True, max_length=200)
    instructor_address = models.CharField(max_length=100)
    instructor_gender = models.CharField(max_length=100)
    
    def __str__(self):
        return self.instructor_id
    
class Activites(models.Model):
    activity_id = models.IntegerField(primary_key=True)
    activity_name = models.CharField(max_length=100)
    activity_description = models.CharField(max_length=100)
    activity_date = models.DateField(auto_now=True, auto_now_add=False)
    instructor_id = models.ForeignKey(Instructor, on_delete=models.CASCADE)
    category_id = models.ForeignKey(Activity_categories, on_delete=models.CASCADE)
    
    def __str__(self):
        return f'{self.activity_id}, {self.activity_name}, {self.activity_description}, {self.activity_date}, {self.instructor_id}, {self.category_id}'

    





# Create your models here.
