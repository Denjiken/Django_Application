from django.contrib import admin
from .models import User

from .models import (
    Activites,
    Instructor,
    Activity_categories,
)

class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'first_name', 'last_name', 'user_email', 'user_password']

admin.site.register(User, UserAdmin)
# Register your models here.
