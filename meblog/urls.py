from django.conf.urls import url
from . import views

urlpatterns = [
	#landing
	url(r'^$', views.post_list, name='post_list'),

	#misc
	url(r'^contact/$', views.contact, name='contact'),
	url(r'^about/$', views.about, name='about'),

	#post
	url(r'^post/(?P<pk>[0-9]+)/$', views.post_detail, name='post_detail'),
	url(r'^post/new/$', views.post_new, name='post_new'),
	url(r'^post/(?P<pk>[0-9]+)/edit/$', views.post_edit, name='post_edit'),
	url(r'^drafts/$', views.post_draft_list, name='post_draft_list'),
	url(r'^post/(?P<pk>[0-9]+)/publish/$', views.post_publish, name='post_publish'),
	url(r'^post_remove/(?P<pk>[0-9]+)/$', views.post_remove, name='post_remove'),

	#category urls
	url(r'^categories/$', views.categories, name='categories'),
	url(r'^categories/(?P<pk>[0-9]+)/$', views.category_specific, name='category_specific'),
	url(r'^category_remove/(?P<pk>[0-9]+)/$', views.category_remove, name='category_remove'),
]