from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('edit_profile/', views.edit_profile, name='edit_profile'),
    path('login/', views.user_login, name='login'),
    path('register/', views.register, name='register'),
    path('profile/', views.user_profile, name='profile'),
    path('logout/', auth_views.LogoutView.as_view(next_page='login'), name='logout')
]

