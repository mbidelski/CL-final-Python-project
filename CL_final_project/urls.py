"""CL_final_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from ecommerce.views import *

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url('^', include('django.contrib.auth.urls')),
    url(r'^', HomeView.as_view(), name="home"),

    # category list, add, mod and del
    url(r'^categories', CategoriesView.as_view(),
        name="categories"),
    url(r'^category_add', ProductCategoryAddView.as_view(),
        name="category_add"),
    url(r'^category_modify/(?P<slug>[A-Za-z\-]+)', ProductCategoryUpdate.as_view(),
        name="category_modify"),
    url(r'^category_del/(?P<slug>[A-Za-z\-]+)', ProductCategoryDel.as_view(),
        name="category_del"),

    # category: show products
    url(r'^category/(?P<slug>[A-Za-z\-]+)', ProductCategoryView.as_view(),
        name="category"),

    # product: view, add, mod & del
    url(r'^product/(?P<product_id>(\d)+)', ProductView.as_view(),
        name="product"),
    url(r'^product_add/(?P<slug>[A-Za-z\-]+)', ProductAdd.as_view(),
        name="product_add"),
    url(r'^product_mod/(?P<pk>(\d)+)/(?P<slug>[A-Za-z\-]+)', ProductUpdate.as_view(),
        name="product_mod"),
    url(r'^product_del/(?P<pk>(\d)+)/(?P<slug>[A-Za-z\-]+)', ProductDel.as_view(),
        name="product_del"),

]
