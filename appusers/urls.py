from django.urls import path
from django.conf import settings
from . import views

app_name = 'users'
urlpatterns = [
    path('dash/', views.dash, name='dash'),
    path('usersignup/', views.usersignup, name='usersignup'),
    path('index/', views.index, name='index'),
    path('add/', views.add, name='add'),
    path('instinfo/', views.instinfo, name='instinfo'),
    path('delete/', views.delete, name='delete'),
    path('update/', views.update, name='update'),
    path('instupdate', views.instupdate, name='instupdate'),
    path('view/', views.view, name='view'),
    path('deleteinstinfo/', views.deleteinstinfo, name='deleteinstinfo'),
]
