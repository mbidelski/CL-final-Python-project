from .models import Category, Product
from datetime import datetime

def my_cp(request):
    ctx={
        'actual_date': datetime.now(),
        'version': '1.0'
    }
    return ctx
def cat_list(request):

    selected_slug = request.GET.get('category')
    print(selected_slug)
    if selected_slug == "" or selected_slug is None:
        category_to_show = None
        products = Product.objects.all().order_by('name')
    else:
        category_to_show = Category.objects.get(slug=selected_slug)
        products = Product.objects.filter(categories=category_to_show).order_by('name')

    categories = Category.objects.all().order_by('category_name')

    ctx={
        'selected': category_to_show,
        'products': products,
        'all_categories': categories,
        'actual_date': datetime.now(),
        'version': '1.0'
    }
    return ctx