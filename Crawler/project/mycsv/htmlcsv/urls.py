from django.contrib import admin
from django.urls import path
from . import views
from django.conf.urls import include, url

urlpatterns = [
    url(r'^output/', views.output, name="output"),
]