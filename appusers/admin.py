from django.contrib import admin
from .models import User

class UserAdmin(admin.ModelAdmin):
    list_display = ['username', 'first_name', 'last_name', 'user_email', 'user_password']

admin.site.register(User, UserAdmin)
# Register your models here.
