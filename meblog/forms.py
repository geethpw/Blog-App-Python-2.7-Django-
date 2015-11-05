from django import forms
from .models import Post, Categories

class PostForm(forms.ModelForm):

    class Meta:
        model = Post
        fields = ('title', 'category', 'text',)

class CategoryForm(forms.ModelForm):

    class Meta:
        model = Categories
        fields = ('category_name',)