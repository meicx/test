# -*- coding:utf-8 -*-

from __future__ import unicode_literals

from django.db import models
from datetime import datetime
from users.models import UserProfile

# Create your models here.


class CourseList(models.Model):
    name = models.CharField(max_length=100, verbose_name=u"课程名", default="")
    decs = models.CharField(max_length=500, verbose_name=u"课程说明", default="")
    add_time = models.DateField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"课程"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


class Question(models.Model):
    course = models.ForeignKey(CourseList, verbose_name=u"课程", default=1)
    content = models.TextField(verbose_name=u"题目内容")    
    answer = models.TextField(verbose_name=u"正确答案")
    score = models.IntegerField(verbose_name=u"分值", default=0)
    note = models.TextField(verbose_name=u"备注信息", default="")
    add_time = models.DateField(default=datetime.now, verbose_name="")
    Question_class = models.TextField(verbose_name=u"题目类别", default="")
    Question_degree = models.IntegerField(verbose_name=u"题目难度", default= 0)
    score_point = models.TextField(verbose_name=u"得分点列表", default="")
    user = models.ForeignKey(UserProfile, verbose_name="创建人", default="")

    class Meta:
        verbose_name = u"题库"
        verbose_name_plural = verbose_name

    def get_content_display(self, field):
        return self.content

    def __unicode__(self):
        model = Question
        return "{0}(题干:{1} | 正确答案:{2} )".format(self.course.name, self.content, self.answer)


class PaperList(models.Model):
    course = models.ForeignKey(CourseList, verbose_name=u"所属课程")
    name = models.CharField(max_length=100, verbose_name=u"试卷名", default=u"")
    is_allow = models.BooleanField(default=False, verbose_name=u"是否启用")
    add_time = models.DateField(default=datetime.now, verbose_name=u"添加时间")
    user = models.ForeignKey(UserProfile, verbose_name='创建人')
    paperclass = models.CharField('考试班级', max_length=255, default='')

    class Meta:
        verbose_name = u"试卷列表"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return u"{0}(试卷名称:{1} | 使用状态:{2})".format(self.course.name, self.name, self.is_allow)


class Paper(models.Model):
    course = models.ForeignKey(CourseList, verbose_name=u"所属课程", default=0)
    question = models.ForeignKey(Question, verbose_name=u"题目")        # 题目id
    paper_name = models.ForeignKey(PaperList, verbose_name=u"试卷名称")  # 试卷id
    add_time = models.DateField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"试题列表"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return u"{0} ({1})".format(self.paper_name, self.question.content)


class UserPaperLog(models.Model):
    paper_name_id = models.IntegerField()
    user_id = models.IntegerField()
    status = models.IntegerField()
    add_time = models.DateField(default=datetime.now, verbose_name=u"添加时间")
    score = models.CharField(max_length=225,verbose_name=u"分数",blank=True, null=True)
    class Meta:
        verbose_name = u"试题列表"
        verbose_name_plural = verbose_name


class UpdateModel(models.Model):
    content = models.TextField('文本内容', default='')
    category = models.CharField('类别', max_length=50, default='')

