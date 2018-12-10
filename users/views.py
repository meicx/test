# -*- coding:utf-8 -*-

from django.shortcuts import render, render_to_response
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.backends import ModelBackend
from .models import UserProfile, EmailRevifyRecord
from django.db.models import Q
from django.views.generic.base import View
from .forms import LoginForm, RegisterForm, ModifyPwdForm, UserInfoForm
from django.contrib.auth.hashers import make_password
from utils.send_mail import send_register_email
from django.http import HttpResponse, HttpResponseRedirect
import json

title = "在线考试系统"
phoneNumber = "15068895421"


def user_index(request):
    """
    用户首页
    :param request:
    :return:
    """
    leftbar = False
    return render_to_response('index.html', locals())


class LoginView(View):
    """用户登录"""
    def get(self, request):
        login_form = LoginForm()
        return render(request, "login.html", {"login_form": login_form, "title": title, "phoneNumber": phoneNumber})

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            user_password = request.POST.get("password", "")
            user = authenticate(username=user_name, password=user_password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponseRedirect('/')
                else:
                    return render(request, "login.html", {"login_form": login_form, "msg": "用户名或密码错误"})
            else:
                return render(request, "login.html", {"login_form": login_form, "msg": "用户名或密码错误"})
        else:
            return render(request, "login.html", {"login_form": login_form})


class LogoutView(View):
    """用户注销"""
    def get(self, request):
        logout(request)
        login_form = LoginForm()
        return render(request, "login.html", {"login_form": login_form, "title": title, "phoneNumber": phoneNumber})


class RegisterView(View):
    """用户注册"""
    def get(self, request):
        register_form = RegisterForm()
        return render(request, "register.html", {"register_form": register_form, "title": title})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            # user_email = request.POST.get("email", "")
            user_name = request.POST.get("username", "")
            role = request.POST.get("role", 0)
            if UserProfile.objects.filter(username=user_name):
                return render(request, "register.html",
                              {"title": title, "register_form": register_form, "msg": u"该学号已经被注册"});

            user_password = request.POST.get("password", "")
            user_profile = UserProfile()
            user_profile.username = user_name
            user_profile.user_class = ''
            # user_profile.email = user_email
            user_profile.is_active = True
            user_profile.role = role
            user_profile.password = make_password(user_password)
            # print("name:",user_name,",email",user_email,",role:",role,",password:",user_password,",password",make_password(user_password))
            user_profile.save()
            # send_register_email(user_email, "register")
            return render(request, "register.html", {"title": title, "msg": u"注册成功，请登录"})
        else:
            return render(request, "register.html", {"register_form": register_form, "title": title})


class UserCenterView(View):
    """用户中心"""
    def get(self, request):
        user = request.user
        user_form = UserInfoForm()
        user_form.nick_name = user.nick_name
        user_form.birthday = user.birthday
        user_form.gender = user.gender
        user_form.mobile = user.mobile

        return render(request, "user-center.html",
                      {"user_form": user_form, "title": title, "sysuser": user, "phoneNumber": phoneNumber, "birthday": str(user.birthday)})

    def post(self, request):
        username = request.user
        user = UserProfile.objects.get(username=username)
        print request.POST

        if user.role == 0:
            user.nick_name = request.POST.get("nick_name")
        else:
            user.nick_name = request.POST.get("nick_name")
            user.user_class = request.POST.get("user_class")
        user.save()
        return render(request, "alert.html", {"score": 0, "title": "修改成功", "msg": "修改个人信息成功", "to": "/user_center/"})


# 调试完成
class CustomBackend(ModelBackend):
    """
    #使用自定义邮箱登陆
    到settings中配置
    AUTHENTICATION_BACKENDS =(
    'users.views.CustomBackend',#元组中只有一个元素要加逗号！！！！
    )
    """
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(email=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None


# 调试完成
class ActiveUserView(View):
    def get(self, request, active_code):
        all_code = EmailRevifyRecord.objects.filter(code=active_code)
        if all_code:
            for record in all_code:
                if record.is_alive:
                    email = record.email
                    user = UserProfile.objects.get(email=email)
                    username = user.username
                    user.is_active = True #激活用户
                    record.is_alive = False #设置当前验证码失效
                    user.save()
                    return render(request, "active_succcess.html", {"title": title, "username": username})
            return render(request, "active_fail.html", {"title": title})
        else:
            return render(request, "active_fail.html", {"title": title})


class ModifyPwd(View):
    def post(self,request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = modify_form.cleaned_data.get('password1', '')
            pwd2 = modify_form.cleaned_data.get('password2', '')
            if pwd1 != pwd2:
                return HttpResponse(json.dumps({'status':'failed', 'msg':u'两次密码不一致'}))
            else:
                request.user.password = make_password(pwd1)
                request.user.save()
                return HttpResponse(json.dumps({'status':'success'}))
        else:
            return HttpResponse(json.dumps(modify_form.errors))


# 404调试完成
def page_not_found(request):
    # 全局404处理函数
    from django.shortcuts import render_to_response
    response = render_to_response('404.html', {"title": title})
    response.status_code = 404
    return response


# 500调试完成
def page_error(request):
    # 全局500处理函数
    from django.shortcuts import render_to_response
    response=render_to_response('500.html', {"title":title})
    response.status_code = 500
    return response


def createstudent(request,num):
    num=int(num)

    for i in range(0,num):
        user_profile = UserProfile()
        username=1000000600+i
        print(username)
        user_profile.username = username
        user_profile.email = username.__str__()+"@qq.com"
        user_profile.is_active = True
        user_profile.role = '1'    #学生1，老师0
        user_profile.password = make_password("123456")
        user_profile.save()
        send_register_email(user_profile.email, "register")

    return HttpResponse("创建成功")