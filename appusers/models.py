from django.db import models
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
    
# Create your models here.
