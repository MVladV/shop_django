from django.db import models


class Task(models.Model):
    title = models.CharField('name', max_length=50)
    task = models.TextField('Опис')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Завдання'
        verbose_name_plural = "Задачі"


class Sneakers(models.Model):
    name = models.CharField('name', max_length=50)
    info = models.TextField('Опис')

    def __str__(self):
        return self.name


class Order(models.Model):
    number = models.CharField('Код', max_length=50)
    info = models.TextField('Інформація')

    def __str__(self):
        return self.number

