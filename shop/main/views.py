from django.shortcuts import render
from django.http import HttpResponse
from .models import Task, Sneakers


def index(request):
    tasks = Task.objects.all()
    # tasks = Task.objects.order_by('id')
    return render(request, 'main/index.html', {'title': 'Головна сторінка сайту', 'tasks': tasks})


def about(request):
    return render(request, 'main/about.html')


def order(request):
    return render(request, 'main/order.html')


def products(request):
    sneakers = Sneakers.objects.all()
    # tasks = Task.objects.order_by('id')
    return render(request, 'main/products.html', {'sneakers': sneakers})


def search(request):
    return render(request, 'main/search.html')


def account(request):
    return render(request, 'main/account.html')


def shoes(request):
    return render(request, 'main/shoes.html')


def basket(request):
    return render(request, 'main/basket.html')
