from django.db import models
from django.core.exceptions import ValidationError
from re import search

# Create your models here.

# def slug_text(value):
#     if search('^[A-Z$')

VAT = (
    (1, 0.23),
    (2, 0.08),
    (3, 0.05),
    (4, 0),
)


class Category(models.Model):
    category_name = models.CharField(max_length=64, verbose_name="Nazwa kategorii")
    slug = models.CharField(max_length=64, unique=True, verbose_name="Identyfikator tekstowy")

    def __str__(self):
        return self.category_name


class Product(models.Model):
    name = models.CharField(max_length=128)
    description = models.TextField(null=True, blank=True)
    price = models.FloatField(null=True, blank=True)
    vat_rate = models.IntegerField(choices=VAT, blank=True)
    stock = models.IntegerField(null=True, blank=True)
    categories = models.ManyToManyField(Category)
    image = models.FileField(upload_to='.', null=True, blank=True)

    def __str__(self):
        return self.name