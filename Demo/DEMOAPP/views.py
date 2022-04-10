from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect, Http404
from .models import Post


# Create your views here.
def home(request):
    return render(request,'home.html')

def login(request):
    return render(request,'login.html')
def signup(request):
    return render(request,'signup.html')
def aboutus(request):
    return render(request,'about us.html')
def service(request):
    return render(request,'card.html')





def createpost(request):
    if request.method == 'POST':
        if request.POST.get('username') and request.POST.get('passw'):
            post = Post()
            post.username = request.POST.get('username')
            post.passw = request.POST.get('passw')
            post.save()
            return render(request, 'card.html')

    else:
        return render(request, 'login.html')
