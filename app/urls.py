from django.urls import path

from . import views


urlpatterns = [
    path('', views.index, name='index'),
    path('sign_up/', views.sign_up, name='sign_up'),
    path('regist/', views.regist, name='regist'),
    path('login/', views.login, name='login'),
    path('mypage/', views.mypage, name='mypage'),
    path('my_log/', views.my_log, name='my_log'),
    path('my_log_detail/<int:ident>/', views.my_log_detail, name='my_log_detail'),
    path('edit_my_log/<int:ident>/', views.edit_my_log, name='edit_my_log'),
    path('my_log_delete/<int:ident>', views.my_log_delete, name='my_log_delete'),
    path('copy_memo/<int:ident>', views.copy_memo, name='copy_memo'),
    path('copy_title/<int:ident>', views.copy_title, name='copy_title'),
    path('copy_used_money/<int:ident>', views.copy_used_money, name='copy_used_money'),

]