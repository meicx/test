# -*- coding:utf-8 -*-
"""TestOnlinExam URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
from django.views.static import serve
import xadmin
from users.views import LoginView, LogoutView, RegisterView, ActiveUserView, \
    UserCenterView, createstudent, user_index
from operate.views import PaperView, PaperListView, DownloadFunView, DownAddView,\
    PaperListOkView, PaperOkView, QuestionList, QuestionViewAdd, QuestionViewEdit,\
    QuestionViewCheck, QuestionViewDelete, PaperCreateList, PaperCreateSelect, PaperCreate, \
    PaperViewDelete, PaperViewEdit, PaperEditSelect, PaperEditList, PaperScoreList, PaperCreateScore, PaperQuestionRemove,\
    PaperScore, AutoScoring, AutoScoring2, Scoring, Scoring2, createanswer, createuserpaperlog, showscoring, showscoring2,\
    manualscoring, manualscoring2, StudentManage, ModelUpdate
from TestOnlineExam.settings import MEDIA_ROOT


urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^$', user_index, name="index"),
    url(r'^index/', user_index, name="index2"),
    url(r'^login/$', LoginView.as_view(), name="login"),
    url(r'^logout/$', LogoutView.as_view(), name="logout"),
    url(r'^register/$', RegisterView.as_view(), name="register"),
    url(r'^captcha/', include('captcha.urls')),
    # 个人中心
    url(r'^user_center/$', UserCenterView.as_view(), name="user_center"),
    # 教师--题库
    url(r'^questionlist/$', QuestionList.as_view(), name="question_list"),  # 题库列表
    url(r'^questionadd/$', QuestionViewAdd.as_view(), name="question_add"),  # 题库添加
    url(r'^questioncheck/$', QuestionViewCheck.as_view(), name="question_check"),  # 题库查询
    url(r'^questionedit/(?P<question_id>.*)/$', QuestionViewEdit.as_view(), name="question_edit"),  # 题库编辑
    url(r'^questiondelete/(?P<question_id>.*)/$', QuestionViewDelete.as_view(), name="question_delete"),  # 题库删除
    # 教师--考试
    url(r'^papercreatelist/$', PaperCreateList.as_view(), name="paper_create_list"),  # 创建考试列表
    url(r'^papercreateselect/$', PaperCreateSelect.as_view(), name="paper_create_select"),  # 创建考试-1-条件选择
    url(r'^papercreate/$', PaperCreate.as_view(), name="paper_create"),  # 创建考试-2-选择试题
    url(r'^paperedit/(?P<paper_id>.*)/$', PaperViewEdit.as_view(), name="paper_edit"),  # 编辑考试
    url(r'^paper_question_remove/(?P<paper_id>[0-9]+)/(?P<paper_question_id>[0-9]+)/$', PaperQuestionRemove.as_view(),
        name="paper_question_remove"),  # 编辑考试-移除试题
    url(r'^paper_question_remove/$', PaperQuestionRemove.as_view(), name="paper_question_remove"),  # 编辑考试-移除试题
    url(r'^papereditselect/(?P<paper_id>.*)/$', PaperEditSelect.as_view(), name="paper_edit_select"),  # 编辑考试-从题库添加试题1
    url(r'^papereditlist/(?P<paper_id>.*)/$', PaperEditList.as_view(), name="paper_edit_list"),  # 编辑考试-从题库添加试题2
    url(r'^paperdelete/(?P<paper_id>.*)/$', PaperViewDelete.as_view(), name="paper_delete"),  # 删除考试
    # 教师--考试评分
    url(r'^paperscorelist/$', PaperScoreList.as_view(), name="paper_score_list"),  # 考试评分列表
    # 教师--自动评分1
    url(r'^autoscoring/(.+)/$', AutoScoring, name="autoscoring"),  # 自动评分1-列表
    url(r'^scoring/(.+)/(.+)/$', Scoring, name="scoring"),  # 自动评分1-评分
    url(r'^showscoring/(.+)/(.+)/$', showscoring, name="showscoring"),  # 自动评分1-结果
    url(r'^manualscoring/(.+)/(.+)/(.+)/$', manualscoring, name="manualscoring"),  # 自动评分1-手动评分
    # 教师--自动评分2
    url(r'^autoscoring2/(.+)/$', AutoScoring2, name="autoscoring2"),  # 自动评分2-列表
    url(r'^scoring2/(.+)/(.+)/$', Scoring2, name="scoring2"),  # 自动评分2-评分
    url(r'^showscoring2/(.+)/(.+)/$', showscoring2, name="showscoring2"),  # 自动评分2-结果
    url(r'^manualscoring2/(.+)/(.+)/(.+)/$', manualscoring2, name="manualscoring2"),  # 自动评分2-手动评分
    # 教师--学生管理
    url(r'^studentmanage/$', StudentManage.as_view(), name="student_manage"),  # 学生管理
    # 教师--资料管理和模型更新
    url(r'^modelupdate/$', ModelUpdate.as_view(), name="model_update"),  # 资料管理和模型更新

    # 学生--我的考试
    url(r'^paperlist/$', PaperListView.as_view(), name="paper_list"),  # 学生--考试列表
    url(r'^paper/(?P<paper_id>.*)/$', PaperView.as_view(), name="paper"),  # 学生--考试题目页面
    url(r'^paperoklist/$', PaperListOkView.as_view(), name="paper_ok_list"),  # 学生--查看成绩
    url(r'^paperok/(?P<paper_id>.*)/$', PaperOkView.as_view(), name="paperok"),  # 学生--查看成绩--查看试卷

    # 以上Done

    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="user_active"),
    url(r'^papercreatescore/(?P<paper_id>.*)/$', PaperCreateScore.as_view(), name="paper_create_score"),
    url(r'^paperscore/(?P<paper_log_id>.*)/$', PaperScore.as_view(), name="paper_score"),
    # 配置媒体文件显示的view
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    url(r'download_info/(?P<page_number>.*)$', DownloadFunView.as_view(), name="download"),
    url(r'downadd/$', DownAddView.as_view(), name="downadd"),
    url(r'^createstudent/(.+)/$', createstudent, name="createstudent"),
    url(r'^createanswer/$', createanswer, name="createanswer"),
    url(r'^createuserpaperlog/$', createuserpaperlog, name="createuserpaperlog"),
    # user
    url(r'^user/', include('users.urls', namespace='user')),
]

# 全局404页面配置
handler404 = 'users.views.page_not_found'
# 全局500页面配置
handler500 = 'users.views.page_error'
