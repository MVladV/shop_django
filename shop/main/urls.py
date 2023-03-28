# from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('about-us', views.about, name='about'),
    path('order', views.order, name='order'),
    path('products', views.products, name='products'),
    path('search', views.search, name='search'),
    path('account', views.account, name='account'),
    path('shoes', views.shoes, name='shoe'),
    path('basket', views.basket, name='basket'),

]
