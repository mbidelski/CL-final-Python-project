# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2017-12-14 11:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ecommerce', '0002_auto_20171212_2114'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='category_name',
            field=models.CharField(max_length=64, verbose_name='Nazwa kategorii'),
        ),
        migrations.AlterField(
            model_name='category',
            name='slug',
            field=models.CharField(max_length=64, unique=True, verbose_name='Identyfikator tekstowy'),
        ),
        migrations.AlterField(
            model_name='product',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='price',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='stock',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='vat_rate',
            field=models.IntegerField(blank=True, choices=[(1, 0.23), (2, 0.08), (3, 0.05), (4, 0)]),
        ),
    ]
