from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse_lazy
from django.views import View
from django import forms

from CL_final_project.settings import MEDIA_ROOT, MEDIA_URL
from .models import Category, Product
from .forms import *
from django.http import HttpResponse
from django.views.generic.edit import UpdateView, DeleteView, CreateView

# Create your views here.
class HomeView(View):
    def get(self, request):
        # if slug is None:
        #     products = Product.objects.all().order_by('name')
        #     category_to_show = None
        # else:
        #     category_to_show = Category.objects.get(slug=slug)
        #     products = Product.objects.filter(categories=category_to_show).order_by('name')
        return render(request, 'home.html')

class CategoriesView(View):
    def get(self, request):
        categories = Category.objects.all().order_by('category_name')
        return render(request, 'store.html')

class ProductView(View):
    def get(self, request, product_id):
        selected_slug = request.GET.get('category')
        product = Product.objects.get(pk=product_id)
        if product.categories.all().count() > 1:
            categories = 'Kategorie: '
        else:
            categories = 'Kategoria: '
        for i in product.categories.all():
            categories = categories + str(i.category_name)+', '
        categories = categories[0:-2]

        return render(request, 'product.html', {
            'product': product,
            'categories': categories,
        })


class ProductCategoryView(View):
    def get(self, request, slug):
        if slug == 'all':
            category = "Wszystkie produkty"
            products = Product.objects.all().order_by('name')
        else:
            category = Category.objects.get(slug=slug)
            products = Product.objects.filter(categories=category).order_by('name')
        return render(request, 'category.html', {
            'products': products,
            'category': category
        })

class ProductCategoryAddView(View):
    def get(self, request):
        # cat = Category.objects.get(slug=slug)
        form = CategoryForm()
        # form = CategoryForm2(queryset=Category.objects.filter(slug=slug))
        # print(form)
        return render(request, 'category_add.html', {
            'form': form,
        })

    def post(self, request):
        # cat_id = request.POST.get('id')
        # cat = Category.objects.get(pk=cat_id)
        # cat = Category.objects.get(slug=slug)
        f = CategoryForm(request.POST)
        # print(f)
        if f.is_valid():
            f.save()
            return redirect('categories')

class ProductCategoryUpdate(UpdateView):
    model = Category
    fields = '__all__'
    template_name_suffix = '_update'
    success_url = '/categories'

class ProductCategoryDel(DeleteView):
    model = Category
    success_url = reverse_lazy('categories')

class ProductAdd(CreateView):
    form_class = ProductEditView
    model = Product
    template_name_suffix = '_form'
    # success_url = '/categories'

    def get_success_url(self):
        return reverse_lazy('category', args=[self.kwargs['slug']])

    # def get_form(self, form_class=None):
    #     print(form_class)
    #     if form_class is None:
    #         form_class = self.get_form_class()
    #     print(form_class)
    #     form = super(ProductAdd, self).get_form(form_class)
    #     form.fields['categories'].widget = forms.CheckboxSelectMultiple()
    #     # print(form)
    #     return form

    def get_initial(self):
        initial = super(ProductAdd, self).get_initial()
        initial['vat_rate'] = 1
        if Category.objects.filter(slug=self.kwargs['slug']).exists():
            i_cat = Category.objects.get(slug=self.kwargs['slug'])
            initial['categories'] = {i_cat.pk: i_cat.category_name}
        return initial

        # def form_valid(self, form):
        #     # category = Category.objects.get(slug=self.kwargs['slug'])
        #     IWC = form
        #     print("hello: {}".format(IWC))
        #     # form.instance.categories = category.category_name
        #     return super(ProductAdd, self).form_valid(form)

class ProductUpdate(UpdateView):
    form_class = ProductEditView
    model = Product
    template_name_suffix = '_update'

    def get_success_url(self):
        return reverse_lazy('product_mod', args=[self.kwargs['pk'],self.kwargs['slug']])

class ProductDel(DeleteView):
    model = Product

    def get_success_url(self):
        return reverse_lazy('category', args=[self.kwargs['slug']])

