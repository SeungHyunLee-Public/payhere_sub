from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from .models import AuthUser, AccountBook
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth import logout as auth_logout
from django.shortcuts import get_object_or_404
import clipboard


def index(request):
    return render(request,'app/index.html')


@csrf_exempt
def sign_up(request):
   if request.method == 'POST':
      user = AuthUser()
      user.email = request.POST['email']
      user.password = make_password(request.POST['password'])
      user.username = request.POST['username']
      user.save()
      return redirect('index')
   else:
      user = AuthUser.objects.all()
      return render(request,'app/sign_up.html', {'user':user})

@csrf_exempt
def regist(request):
   if not request.user.is_authenticated:
      return redirect('login')
   if request.method == 'POST':
      accountbook = AccountBook()
      accountbook.title = request.POST['title']
      accountbook.reg_date = request.POST['reg_date']
      accountbook.mod_date = request.POST['reg_date']
      accountbook.memo = request.POST['memo']
      accountbook.used_money = request.POST['used_money']
      accountbook.reg_user = request.user.username 
      accountbook.categorie = request.POST['categorie']
      accountbook.save()
      return redirect('index')
   else:
      accountbook = AccountBook.objects.all()
      return render(request,'app/regist.html', {'accountbook':accountbook})

def login(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:  # 로그인 정보가 있다면
            auth_login(request, user)
            return redirect('index')
        else:  # 로그인 정보가 없다면
            auth_logout(request)
            return render(request, 'app/index.html', {'error': 'username or password is incorrect'})
    else:
        auth_logout(request)
        return render(request, 'app/login.html')


def mypage(request):
   if not request.user.is_authenticated:
      return redirect('login')
   authusers=AuthUser.objects.filter(username=request.user.username)
   return render(request, 'app/mypage.html', {"authusers": authusers})


def my_log(request):
    accountbooks = AccountBook.objects.all()
    accountbooks = accountbooks.filter(reg_user=request.user.username)
    return render(request, 'app/my_log.html', {"accountbooks": accountbooks})

def my_log_detail(request, ident):
    accountbooks = get_object_or_404(AccountBook, ident=ident)
    return render(request, 'app/my_log_detail.html', {"accountbooks": accountbooks})

def edit_my_log(request, ident):
   if not request.user.is_authenticated:
      return redirect('login')
   if request.method == 'POST':
      accountbooks = AccountBook.objects.get(ident=ident)
      accountbooks.reg_user = request.user.username 
      accountbooks.title = request.POST['title']
      accountbooks.reg_date = request.POST['reg_date']
      accountbooks.memo = request.POST['memo']
      accountbooks.used_money = request.POST['used_money']
      accountbooks.categorie = request.POST['categorie'] 
      accountbooks.save()
      return redirect('my_log')
   else:
      accountbooks = AccountBook.objects.get(ident=ident)
      return render(request,'app/edit_my_log.html', {'accountbooks':accountbooks})

def my_log_delete(request, ident):
    accountbooks = get_object_or_404(AccountBook, ident=ident)
    if accountbooks.reg_user == request.user.username:
        accountbooks.delete()
        return redirect('my_log')
    else:
        return redirect('my_log')

def copy_memo(request, ident):
    accountbooks = get_object_or_404(AccountBook, ident=ident)
    clipboard.copy(accountbooks.memo)
    return redirect('my_log')

def copy_title(request, ident):
    accountbooks = get_object_or_404(AccountBook, ident=ident)
    clipboard.copy(accountbooks.title)
    return redirect('my_log')

def copy_used_money(request, ident):
    accountbooks = get_object_or_404(AccountBook, ident=ident)
    clipboard.copy(accountbooks.used_money)
    return redirect('my_log')