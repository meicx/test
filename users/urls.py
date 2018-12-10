from django.conf.urls import url

from .views import  ModifyPwd
                   

urlpatterns = [

    url(r'^modify_pwd/$', ModifyPwd.as_view(), name='modify_pwd'),
]