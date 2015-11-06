from django.shortcuts import render, redirect, get_object_or_404
from django.utils import timezone
from .models import Post, Categories
from .forms import PostForm, CategoryForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

# Posts
def post_list(request):
    posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('published_date')
    categories = Categories.objects.all()

    paginator = Paginator(posts, 5)

    try:
        page = int(request.GET.get('page', '1'))
    except:
        page = 1

    try:
        posts = paginator.page(page)
    except(EmptyPage, InvalidPage):
        posts = paginator.page(paginator.num_pages)

    return render(request, 'meblog/post_list.html', {'posts': posts, 'categories': categories,})
    


def post_detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    return render(request, 'meblog/post_detail.html', {'post': post})

def post_new(request):
    if request.method == "POST":
        form = PostForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.published_date = timezone.now()
            post.save()
            return redirect('meblog.views.post_detail', pk=post.pk)
    else:
        form = PostForm()
    return render(request, 'meblog/post_edit.html', {'form': form})

# def post_new(request):
#     if request.method == "POST":
#         form = PostForm(request.POST)
#         if form.is_valid():
#             post = form.save(commit=False)
#             post.author = request.user
#             post.save()
#             return redirect('meblog.views.post_detail', pk=post.pk)
#     else:
#         form = PostForm()
#     	return render(request, 'meblog/post_edit.html', {'form': form})
        
@login_required
def post_edit(request):
    post = get_object_or_404(Post, pk=pk)
    if request.method == "POST":
        form = PostForm(request.POST, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.published_date = timezone.now()
            post.save()
            return redirect('meblog.views.post_detail', pk=post.pk)
    else:
        form = PostForm(instance=post)
    return render(request, 'meblog/post_edit.html', {'form': form})

@login_required
def post_draft_list(request):
	posts = Post.objects.filter(published_date__isnull=True).order_by('created_date')
	return render(request, 'meblog/post_draft_list.html', {'posts':posts})

@login_required
def post_publish(request, pk):
	post = get_object_or_404(Post, pk=pk)
	post.publish()
	return redirect('meblog.views.post_detail', pk=pk)

@login_required
def post_remove(request, pk):
	post = get_object_or_404(Post, pk=pk)
	post.delete()
	return redirect('meblog.views.post_list')


# categories
@login_required
def categories(request) :
    if request.method == "POST":
        form = CategoryForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.save()
            return redirect('meblog.views.categories')
    else:
        form = CategoryForm()
        categories = Categories.objects.all()
        return render(request, 'meblog/categories.html', {'categories': categories, 'form': form})


@login_required
def category_remove(reques, pk):
    category = get_object_or_404(Categories, pk=pk)
    category.delete()
    return redirect('meblog.views.categories')

def category_specific(request, pk):
    posts = Post.objects.filter(category_id=pk).order_by('published_date')
    category = Categories.objects.filter(pk=pk)
    return render(request, 'meblog/category_specific.html', {'posts': posts , 'category': category})

#contact
def contact(request):
    return render(request, 'meblog/contact.html')
#about
def about(request):
    return render(request, 'meblog/about.html')