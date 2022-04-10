from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('',views.home,name='home-page'),
    path('login', views.login),
    path('signup', views.signup),
    path('aboutus', views.aboutus),
    path('service', views.service),
    path('post', views.createpost),
]