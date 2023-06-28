from django.shortcuts import render

def index(request):
    return render(request, 'index.html')

def add(request):
    return render(request, 'add.html')

def dash(request):
    return render(request, 'dash.html')

def delete(request):
    return render(request, 'delete.html')

def instinfo(request):
    return render(request, 'instinfo.html')

def instupdate(request):
    return render(request, 'instupdate.html')

def update(request):
    return render(request, 'update.html')

def usersignup(request):
    return render(request, 'usersignup.html')

def view(request):
    return render(request, 'view.html')

def deleteinstinfo(request):
    return render(request, 'deleteinstinfo.html')

# Create your views here.
