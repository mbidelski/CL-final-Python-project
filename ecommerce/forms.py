from django.forms import ModelForm, modelformset_factory
from django import forms
from django.core.exceptions import ValidationError
from .models import Category, Product

# CategoryForm2 = modelformset_factory(Category, fields=('category_name', 'slug'))

class CategoryForm(ModelForm):
    class Meta:
        model = Category
        fields = '__all__'
    # id = forms.IntegerField(widget=forms.HiddenInput)
        # widgets = {
        #     'id' = IntegerField(widget=forms.HiddenInput),
        # }

class ProductEditView(forms.ModelForm):
    class Meta:
        model = Product
        fields = '__all__'
        widgets = {
            # 'name': forms.Textarea(attrs={'class': 'form-control'}),
            'categories': forms.CheckboxSelectMultiple(),
        }
