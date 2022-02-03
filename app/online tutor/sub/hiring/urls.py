from django.urls import path
from .views import *

urlpatterns = [
    path('',home,name='home'),
    path('login/',loginUser,name='login'),
    path('logout/',logoutUser,name='logout'),
    path('register/',registerUser,name='register'),
    path('apply/',applyPage,name='apply'),
    path('tutorpost/',tutorpost,name='tutorpost'),
    path('mypost/', mypost, name='mypost'),
    path('studentrequirement/', studentrequirement, name='studentrequirement'),
    path('requirements/', requirements, name='requirements'),
    path('deletepost/<post_id>', delete_tutorpost, name='deletepost'),
    path('admin_visit_tutorpost', admin_visit_tutorpost, name='admin_visit_tutorpost'),
    path('approve_post/<post_id>',approve_post, name='approve_post'),
    path('admin_visit_studentpost', admin_visit_studentpost, name='admin_visit_studentpost'),
    path('approve_studentpost/<post_id>',approve_studentpost, name='approve_studentpost'),
    
    
    
]