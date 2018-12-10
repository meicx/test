# -*- coding:utf-8 -*-

from django.shortcuts import render, HttpResponse, render_to_response
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from coures.models import Paper, PaperList, UserPaperLog, UpdateModel
from datetime import datetime
from users.models import FileStroe
from django.db.models import Max
from django.template import RequestContext
from django.db import connection
from coures.models import Question
from coures.trans import *
from operate.getdata import getdata
from users.models import UserProfile
import xlrd
import json
from docx import Document
import StringIO
from .models import UserAnswerLog
from TestOnlineExam.settings import BASE_DIR
import os
import uuid


# 考试题库
class QuestionList(View):
    """题库列表"""
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_question where user_id = " + str(request.user.id)
            cursor.execute(sql)
            question_list = cursor.fetchall()
            question_count = len(question_list)
            print question_list
            title = "题库"
            return render_to_response("question_list.html", locals())
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class QuestionViewAdd(View):
    """添加题库"""
    def get(self, request):
        if request.user.is_authenticated():
            return render_to_response("question_view_add.html", locals(), context_instance=RequestContext(request))
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request):
        if request.user.is_authenticated():
            Question_class = request.POST.get('Question_class')
            content = request.POST.get('content')
            answer = request.POST.get('answer')
            score_point = request.POST.get('score_point')
            score = request.POST.get('score')
            Question_degree = request.POST.get('Question_degree')

            Question.objects.create(Question_class=Question_class, content=content,
                                    answer=answer, score_point=score_point,
                                    score=score, Question_degree=Question_degree,
                                    add_time=str(datetime.now().date()),
                                    user_id=request.user.id)  # 添加新题目
            return render(request, "alert.html", {"score": 0, "title": "新增试题", "msg": "新增试题成功",
                                                  "to": "/questionlist/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class QuestionViewCheck(View):
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            return render(request, "question_view_check.html")
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            Question_class = request.POST.get('Question_class')
            Question_degree = request.POST.get('Question_degree')
            sql = "select * from coures_question where user_id = " + str(request.user.id)
            if Question_class is not None:
                sql += " and Question_class like '%" + Question_class + "%'"
            if Question_degree is not None and Question_degree != '':
                sql += " and Question_degree = " + Question_degree
            cursor.execute(sql)
            question_list = cursor.fetchall()
            question_count = len(question_list)
            title = "题库"
            return render(request, "question_list.html", {"question_list": question_list,
                                                          "question_count": question_count,
                                                          "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class QuestionViewEdit(View):
    def get(self, request, question_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_question where id=" + question_id
            cursor.execute(sql)
            row = cursor.fetchone()
            return render(request, "question_view_edit.html", {"question_info": row})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, question_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():

            content = request.POST.get('content')
            answer = request.POST.get('answer')
            score = request.POST.get('score')

            Question_class = request.POST.get('Question_class')
            score_point = request.POST.get('score_point')
            Question_degree = request.POST.get('Question_degree')

            # sql = "update coures_question set content='" + content + "',answer='" + answer + "', score='" + score + "' where id=" + question_id;
            sql = "update coures_question set content='" + content\
                + "', answer='" + answer + "', score=" + score\
                + ", Question_class = '" + Question_class\
                + "', score_point = '" + score_point\
                + "', Question_degree = " + Question_degree + " where id=" + question_id
            cursor.execute(sql)
            return render(request, "alert.html", {"score": 0, "title": "编辑试题", "msg": "编辑试题成功",
                                                  "to": "/questionlist/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class QuestionViewDelete(View):
    def get(self, request, question_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "delete from coures_question where id=" + question_id
            cursor.execute(sql)
            return render(request, "alert.html", {"score": 0, "title": "删除试题", "msg": "删除试题成功", "to": "/questionlist/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


# 创建考试
class PaperCreateList(View):
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_paperlist where user_id = " + str(request.user.id)
            cursor.execute(sql)
            paper_list = cursor.fetchall()
            paper_count = len(paper_list)
            title = "创建考试"
            return render(request, "paper_create_list.html", {"question_list": paper_list,
                                                              "question_count": paper_count,
                                                              "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request):
        paper_name = request.POST.get('paper_name', '')
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_paperlist where user_id = " + str(request.user.id) + " and name like '%" + paper_name + "%'"
            cursor.execute(sql)
            paper_list = cursor.fetchall()
            print paper_list
            paper_count = len(paper_list)
            print paper_list
            title = "创建考试"
            return render(request, "paper_create_list.html", {"question_list": paper_list,
                                                              "question_count": paper_count,
                                                              "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperCreateSelect(View):
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_paperlist"
            cursor.execute(sql)
            paper_list = cursor.fetchall()
            paper_count = len(paper_list)
            title = "创建考试"
            return render(request, "paper_create_select.html", {"question_list": paper_list,
                                                                "question_count": paper_count,
                                                                "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperCreate(View):
    """考试创建"""
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            where = ''

            if "choice" in request.GET:
                choice = request.GET['choice']
                where = ' where user_id = ' + str(request.user.id) + ' and ('
                lines = choice.split('---')
                for line in lines:
                    ll = line.split('___')
                    if len(ll) != 2:
                        continue
                    if ll[0] != '':
                        where += "(Question_class like '%" + ll[0] + "%' and Question_degree = " + ll[1] + ") or "
                    else:
                        where += "Question_degree = " + ll[1] + " or "
                where = where[:-4]
                where += ')'
            sql = "select * from coures_question" + where
            cursor.execute(sql)
            question_list = cursor.fetchall()
            question_count = len(question_list)
            title = "创建考试"
            return render(request, "paper_create.html",
                          {"question_list": question_list, "question_count": question_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            papername = request.POST.get("papername")
            paperclass = str(request.POST.get("paperclass"))
            paperclass = paperclass.replace('，', ',').replace(' ', '')
            question_id = request.POST.getlist("question_id")

            sql = "insert into coures_paperlist(name, is_allow, add_time, course_id,user_id, paperclass) value('" + papername + "','1','" + str(
                datetime.now()) + "','1', " + str(request.user.id) + ", '" + paperclass + "')"
            cursor.execute(sql)
            papaer_name_id = cursor.lastrowid
            for question_item in question_id:
                sql = "insert into coures_paper(add_time, paper_name_id, question_id, course_id) value('" + str(
                    datetime.now()) + "','" + str(papaer_name_id) + "','" + str(question_item) + "', '1')"
                cursor.execute(sql)
            return render(request, "alert.html", {"score": 0, "title": "创建考试", "msg": "创建考试成功", "to": "/papercreatelist/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperViewEdit(View):
    """考试编辑"""
    def get(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select id, name, paperclass, is_allow, add_time, course_id from coures_paperlist where id = " + paper_id
            cursor.execute(sql)
            row = cursor.fetchone()
            sql2 = "select a.id, a.question_id, b.content from coures_paper a, coures_question b where a.paper_name_id = " + paper_id + " and a.question_id = b.id order by question_id"
            cursor.execute(sql2)
            qlist = cursor.fetchall()
            return render(request, "paper_edit.html", {"paper_info": row, "question_list": qlist})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            papername = request.POST.get('papername')
            paperclass = str(request.POST.get("paperclass"))
            paperclass = paperclass.replace('，', ',').replace(' ', '')
            sql = "update coures_paperlist set name = '" + papername + "', paperclass = '" + paperclass + "' where id = " + paper_id
            cursor.execute(sql)
            return render(request, "alert.html", {"score": 0, "title": "编辑考试", "msg": "编辑考试成功",
                                                  "to": "/paperedit/" + paper_id + "/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperQuestionRemove(View):
    """编辑考试-从考试中移除试题"""
    def get(self, request, paper_id=None, paper_question_id=None):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            if paper_id is None or paper_question_id is None:
                return render(request, "alert.html", {"score": 0,
                                                      "title": "从试卷移除题目失败",
                                                      "msg": "移除失败，有id为空，请检查",
                                                      "to": "/papercreatelist/"})
            sql = "delete from coures_paper where id = " + paper_question_id
            cursor.execute(sql)
            return render(request, "alert.html", {"score": 0, "title": "从试卷移除题目",
                                                  "msg": "移除成功", "to": "/paperedit/" + paper_id + "/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperEditSelect(View):
    """编辑考试-从题库添加试题"""
    def get(self, request, paper_id):
        if request.user.is_authenticated():
            title = "从题库选择试题"
            return render(request, "paper_edit_select.html", {"paper_id": paper_id,
                                                              "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperEditList(View):
    """编辑考试-从题库添加试题2"""
    def get(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            where = ' where user_id = ' + str(request.user.id) + ' and id not in (select question_id from coures_paper where paper_name_id = ' + paper_id + ')'

            if "choice" in request.GET:
                choice = request.GET['choice']
                where += ' and ('
                lines = choice.split('---')
                for line in lines:
                    ll = line.split('___')
                    if len(ll) != 2:
                        continue
                    if ll[0] != '':
                        where += "(Question_class like '%" + ll[0] + "%' and Question_degree = " + ll[1] + ") or "
                    else:
                        where += "Question_degree = " + ll[1] + " or "
                where = where[:-4]
                where += ')'
            sql = "select * from coures_question" + where
            cursor.execute(sql)
            question_list = cursor.fetchall()
            question_count = len(question_list)
            title = "从题库添加试题"
            return render(request, "paper_edit_list.html",
                          {"question_list": question_list, "question_count": question_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            question_id = request.POST.getlist("question_id")

            for question_item in question_id:
                sql = "insert into coures_paper(add_time, paper_name_id, question_id, course_id) value('" + str(
                    datetime.now()) + "','" + paper_id + "','" + str(question_item) + "', '1')"
                cursor.execute(sql)
            # return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})
            return render(request, "alert.html", {"score": 0, "title": "向试卷中添加试题", "msg": "添加试题成功",
                                                  "to": "/paperedit/" + paper_id + "/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperViewDelete(View):
    """删除试卷"""
    def get(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "delete from coures_paper where paper_name_id=" + paper_id
            cursor.execute(sql)
            sql = "delete from coures_paperlist where id=" + paper_id
            cursor.execute(sql)
            return render(request, "alert.html", {"score": 0,
                                                  "title": "删除试卷",
                                                  "msg": "删除考试成功",
                                                  "to": "/papercreatelist/"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


# 考试评分
class PaperScoreList(View):
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_paperlist where user_id = " + str(request.user.id)
            cursor.execute(sql)
            paper_list = cursor.fetchall()
            paper_count = len(paper_list)
            title = "创建考试"

            return render(request, "paper_create_score_list.html", {"question_list": paper_list,
                                                                    "question_count": paper_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


def AutoScoring(request, paperid):
    """自动评分1-首页列表"""
    questions = Paper.objects.filter(paper_name=paperid)
    return render(request, "autoscore.html", {"question": questions, "paperid": paperid})


def Scoring(request, paperid, questionid):
    """自动评分1"""
    res = []
    pre = []
    scorequestion = Paper.objects.get(paper_name=paperid, question=questionid)
    answerlogs = UserAnswerLog.objects.filter(paper=scorequestion.id)
    question = Question.objects.get(id=questionid)
    res.append(question.answer)
    print(scorequestion.id.__str__()+"标准答案" + question.answer)
    for answer in answerlogs:
        res.append(answer.answer)
    sentences = []
    size = 100  # word2vec的规模
    for line in res:
        sentences.append(cutword(line))
    # 训练word2vec
    model = word2vec.Word2Vec(sentences, min_count=1, size=size)
    print(model)
    distancematrix = getdistancematrix(sentences, model, size)
    progress = 0
    for i in distancematrix[1:]:
        progress += 1
        dis = getEulideandistance(distancematrix[0], i)
        pre.append(max(10 - int(dis * 100), 0))  # 将距离转化为相似度，满分为10
    p = 0
    for answer in answerlogs:
        answer.score = (pre[p] * question.score) / 10
        answer.save()
        p += 1
    return HttpResponse(answerlogs.count())


def showscoring(request, paperid, questionid):
    """自动评分1--结果"""
    scorequestion = Paper.objects.get(paper_name=paperid, question=questionid)
    answerlogs = UserAnswerLog.objects.filter(paper=scorequestion.id)
    paperinfo = PaperList.objects.get(id=paperid)
    return render(request, "autoscoring.html", {"paperinfo": paperinfo, "paper_id": paperid, "question_id": questionid, "answerlogs": answerlogs})


def manualscoring(request, paperid, questionid, logid):
    """自动评分1-手动评分"""
    ms = int(request.POST.get("mscore"))

    answerlog = UserAnswerLog.objects.filter(id=logid).first()
    answerlog.mscore = ms
    answerlog.save()
    return render(request, "alert.html", {"score": 0, "title": "人工评分", "msg": "人工评分1成功",
                                          "to": "/showscoring/" + paperid + "/" + questionid + "/"})


def AutoScoring2(request, paperid):
    """自动评分2-列表"""
    questions = Paper.objects.filter(paper_name=paperid)
    return render(request, "autoscore2.html", {"question": questions, "paperid": paperid})


def Scoring2(request, paperid, questionid):
    """自动评分2-评分"""
    res = []
    pre = []
    dt = []
    scorequestion = Paper.objects.get(paper_name=paperid, question=questionid)
    answerlogs = UserAnswerLog.objects.filter(paper=scorequestion.id)
    question = Question.objects.get(id=questionid)
    res.append(question.answer)
    ll = question.score_point.split('；')
    for l3 in ll:
        l4 = l3.split(' ')
        if len(l4) == 2 and l4[0] != '':
            try:
                ss = int(l4[1][:-1])
                dt.append((l4[0], ss))
            except Exception:
                pass

    for answer in answerlogs:
        sc = 0
        for dd in dt:
            if dd[0] in answer.answer:
                sc += dd[1]

        answer.score2 = sc
        answer.save()
    return HttpResponse(answerlogs.count())


def showscoring2(request, paperid, questionid):
    """自动评分2-结果"""
    scorequestion = Paper.objects.get(paper_name=paperid, question=questionid)
    answerlogs = UserAnswerLog.objects.filter(paper=scorequestion.id)
    paperinfo = PaperList.objects.get(id=paperid)
    return render(request, "autoscoring2.html", {"paperinfo": paperinfo, "paper_id": paperid, "question_id": questionid, "answerlogs": answerlogs})


def manualscoring2(request, paperid, questionid, logid):
    """自动评分2-手动评分"""
    ms = int(request.POST.get("mscore"))

    answerlog = UserAnswerLog.objects.filter(id=logid).first()
    answerlog.mscore = ms
    answerlog.save()
    return render(request, "alert.html", {"score": 0, "title": "人工评分", "msg": "人工评分2成功",
                                          "to": "/showscoring2/" + paperid + "/" + questionid + "/"})


# 学生管理
class StudentManage(View):
    """学生管理"""
    def get(self, request):
        if request.user.is_authenticated():
            return render(request, "student_manage.html")
        else:
            return render(request, "login.html", {"msg": u'请先登录。'})

    def post(self, request):
        if request.user.is_authenticated():
            cursor = connection.cursor()
            if len(request.FILES) == 0:
                return render(request, "student_manage.html", {"msg": u"请上传一个文件。"})

            excel = request.FILES['excel']
            data = []
            # 处理Excel
            wb = xlrd.open_workbook(filename=None, file_contents=excel.read())
            ws = wb.sheets()[0]
            nrows = ws.nrows
            for i in range(1, nrows):
                data.append(ws.row_values(i))

            success = 0
            repeat = 0
            invalid = 0
            for xm, xh, bj in data:
                if xm == '' or xh == '' or bj == '':
                    invalid += 1
                    continue
                first_name = xm[0]
                last_name = xm[1:]
                xh = str(int(xh))
                bj = str(int(bj))
                sql = "select count(1) from users_userprofile where username = '" + str(xh) + "'"
                cursor.execute(sql)
                count = cursor.fetchone()
                if count[0] == 0:
                    # 注册用户
                    user_profile = UserProfile()
                    user_profile.username = str(xh)
                    user_profile.nick_name = xm
                    user_profile.first_name = first_name
                    user_profile.last_name = last_name
                    user_profile.email = ""
                    user_profile.user_class = bj
                    user_profile.is_active = True
                    user_profile.role = 1
                    user_profile.password = make_password(xh)
                    user_profile.save()
                    success += 1
                else:
                    repeat += 1
            repeat_msg = ''
            if repeat > 0:
                repeat_msg = '另' + str(repeat) + '条已存在。'
            if invalid > 0:
                repeat_msg += str(invalid) + '条数据因缺失项无效。'
            return render(request, "student_manage_ok.html", {"insert_total": success, "repeat_msg": repeat_msg})
        else:
            return render(request, "login.html", {"msg": u'请先登录。'})


# 资料管理和模型更新
class ModelUpdate(View):
    """资料管理和模型更新"""
    def get(self, request):
        if request.user.is_authenticated():
            return render(request, "model_update.html")
        else:
            return render(request, "login.html", {"msg": u'请先登录。'})

    def post(self, request):
        if request.user.is_authenticated():
            cursor = connection.cursor()
            word = request.FILES.get('word', None)
            category = request.POST.get('category', '')
            fp = BASE_DIR + os.sep + 'static' + os.sep + 'word' + os.sep + str(uuid.uuid1()) + '.docx'
            f = open(fp, 'wb')
            for chunk in word.chunks():
                f.write(chunk)
            f.close()

            with open(fp, 'rb') as fr:
                document = Document(fr)
                ps = document.paragraphs
                ss = ''
                for p in ps:
                    ss += p.text + '\n'
                m = UpdateModel()
                m.content = ss
                m.category = category
                m.save()

            resdata = dict()
            resdata['ret'] = 0
            tmp = json.dumps(resdata)
            return HttpResponse(tmp, content_type='application/json')


# 学生考试列表
class PaperListView(View):
    """学生考试列表页面"""
    def get(self, request):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            papers = []
            if request.user.user_class is not None and request.user.user_class != '':
                papers = PaperList.objects.filter(is_allow=True, paperclass__contains=request.user.user_class)
            paper_index = 0
            paper_no_list = []
            for i in papers:
                sql = "select * from coures_userpaperlog where paper_name_id=" + str(i.id) + " and user_id="\
                     + str(request.user.id)
                cursor.execute(sql)
                row = cursor.fetchone()
                if not row:
                    papers[paper_index].status_name = "未完成"
                    paper_no_list.append(i)

            return render(request, "paper_list.html", {"papers": paper_no_list, "title": u"试题列表页面"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperView(View):
    """学生考试题目页面"""
    def get(self, request, paper_id):
        if request.user.is_authenticated():
            title = '考试题目'
            paper_list_id = PaperList.objects.filter(id=paper_id)  # 找到目标试卷
            paper_list_info = PaperList.objects.get(id=paper_id)  # 找到目标试卷
            papers = Paper.objects.filter(paper_name__id=paper_list_id)  # 找到所有试题

            answer_flag = 0
            UserPaperLog_info = UserPaperLog.objects.raw(
                "select * from coures_userpaperlog where (status=1 or status=2) and paper_name_id=" + str(
                    paper_list_info.id) + " and user_id=" + str(request.user.id))
            print UserPaperLog_info
            print len(list(UserPaperLog_info))
            if 0 < len(list(UserPaperLog_info)):
                answer_flag = 1
            if 1 == answer_flag:
                title = paper_list_info.name
                return render(request, "score.html", {"score": 0, "title": title})

            question_list = []
            question_id_list = []
            for paper in papers:
                question = Question.objects.get(pk=paper.question_id)
                question_list.append(question)
                question_id_list.append(question.id)
                title = paper.paper_name

            question_now = tuple(question_list)  # 题目元组
            question_count = len(question_now)  # 题目数
            return render(request, "paper_question.html",
                          {"paper_list_name": paper_list_info.name, "question": question_now,
                           "question_count": question_count, "title": title, "leftbar": False})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, paper_id):
        if request.user.is_authenticated():
            paper_list_id = PaperList.objects.filter(id=paper_id)  # 找到目标试卷
            paper_list_info = PaperList.objects.get(id=paper_id)  # 找到目标试卷
            papers = Paper.objects.filter(paper_name__id=paper_list_id)  # 找到所有试题
            question_id_list = []
            title = ''
            for paper in papers:
                print 'paper is ', paper

                cursor = connection.cursor()
                sql = "select * from coures_userpaperlog where paper_name_id=" + str(
                    paper_list_info.id) + " and user_id=" + str(request.user.id)

                cursor.execute(sql)
                row = cursor.fetchone()
                if row:
                    paper_log_id = row[0]
                    sql = "update coures_userpaperlog set status=1 where paper_name_id=" + str(
                        paper_list_info.id) + " and user_id=" + str(request.user.id)
                    cursor.execute(sql)
                else:
                    sql = "insert coures_userpaperlog(paper_name_id, user_id, status, add_time, score) value('" + str(
                        paper_list_info.id) + "', '" + str(request.user.id) + "',1,'" + str(datetime.now()) + "', '')"
                    cursor.execute(sql)
                    paper_log_id = cursor.lastrowid

                question = Question.objects.get(pk=paper.question_id)
                question_id_list.append(question.id)

                user_UserAnswerLog = UserAnswerLog()
                # 记录用户
                user_UserAnswerLog.user = request.user
                # 记录试卷名
                user_UserAnswerLog.paper = paper

                user_UserAnswerLog.paper_log_id = paper_log_id

                # 记录做题时间
                user_UserAnswerLog.add_time = datetime.now()

                user_UserAnswerLog.score = -1

                # 根据编号找到用户提交的对应题号的答案
                user_ans = request.POST.get(str(question.id), "")
                user_UserAnswerLog.answer = user_ans
                user_UserAnswerLog.save()
                title = paper.paper_name.name

            return render(request, "score.html", {"score": 0, "title": title, "msg": "你已经完成考试, 请耐心等待评分"})


class PaperListOkView(View):
    """查看成绩"""
    def get(self, request):
        cursor = connection.cursor()
        papers = PaperList.objects.filter(is_allow=True)
        paper_index = 0
        paper_no_list = []
        for i in papers:
            sql = "select * from coures_userpaperlog where paper_name_id=" + str(i.id) + " and user_id="\
                  + str(request.user.id)
            cursor.execute(sql)
            row = cursor.fetchone()
            if row and row[3] != 0:
                sql2 = "select a.* from operate_useranswerlog a, coures_paper b where b.paper_name_id = " + str(i.id)\
                       + " and b.id = a.paper_id and a.user_id = " + str(request.user.id)
                cursor.execute(sql2)
                rows = cursor.fetchall()
                print(rows)
                haveScore = True
                if len(rows) == 0:
                    haveScore = False
                else:
                    for r in rows:
                        if r[2] == -1 and r[7] == -1 and r[8] == -1:
                            haveScore = False

                if haveScore:
                    papers[paper_index].status_name = "已评分"
                else:
                    papers[paper_index].status_name = "未评分"
                paper_no_list.append(i)
            else:
                papers[paper_index].status_name = "未提交"
            paper_index += 1
        return render(request, "paper_ok_list.html", {"papers": paper_no_list, "title": u"试题列表页面"})


class PaperOkView(View):
    def get(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            paper_list_id = PaperList.objects.filter(id=paper_id)  # 找到目标试卷
            paper_list_info = PaperList.objects.get(id=paper_id)  # 找到目标试卷
            papers = Paper.objects.filter(paper_name__id=paper_list_id)  # 找到所有试题
            question_list = []
            question_id_list = []
            paper_index = 0
            for paper in papers:
                question = Question.objects.get(pk=paper.question_id)
                question_id_list.append(question.id)
                sql = "select * from operate_useranswerlog where paper_id=" + str(paper.id) + " and user_id="\
                      + str(request.user.id)
                cursor.execute(sql)
                row = cursor.fetchone()
                if row:
                    question.useranswer = row[1]
                    question.userscore = row[2]  # 自动评分1
                    question.userscore2 = row[8]  # 自动评分2
                    question.usermscore = row[7]  # 手动评分
                    question_list.append(question)
                paper_index += 1
                title = paper.paper_name

            question_now = tuple(question_list)  # 题目元组

            question_count = len(question_now)  # 题目数
            return render(request, "paper_ok_question.html",
                          {"paper_list_name": paper_list_info.name, "question": question_now,
                           "question_count": question_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


# 以上Done


class PaperCreateScore(View):
    def get(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select * from coures_userpaperlog paperlog left join users_userprofile userprofile on paperlog.user_id = userprofile.id where paperlog.paper_name_id=" + str(paper_id)
            cursor.execute(sql)
            question_list = cursor.fetchall()
            print question_list
            question_count = len(question_list)
            title = "创建考试"

            return render(request, "paper_create_score.html", {"question_list": question_list, 
                                                               "question_count": question_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, paper_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            papername = request.POST.get("papername")
            question_id = request.POST.getlist("question_id")
            
            sql = "insert into coures_paperlist(name, is_allow, add_time, course_id) value('" + papername + "','1','" + str(datetime.now()) + "','1')"
            cursor.execute(sql)
            papaer_name_id = cursor.lastrowid
            for question_item in question_id:
                sql = "insert into coures_paper(add_time, paper_name_id, question_id, course_id) value('" + str(datetime.now()) + "','" + str(papaer_name_id) + "','" + str(question_item) + "', '1')"
                cursor.execute(sql)

            return render(request, "score.html", {"score": 0, "title": "创建题库", "msg": "新增试题成功"})
                
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class PaperScore(View):
    def get(self, request, paper_log_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            sql = "select question.id,answerlog.id,answerlog.answer, question.score,question.content, question.answer from operate_useranswerlog answerlog left join coures_paper paper on answerlog.paper_id=paper.id left join coures_question question on question.id = paper.question_id where answerlog.paper_log_id=" + str(paper_log_id)
            cursor.execute(sql)
            question_now = cursor.fetchall()
            print question_now
            question_count = len(question_now)
            title = "创建考试"
            
            # return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})
            return render(request, "paper_score_question.html", {"question": question_now, 
                                                                 "question_count": question_count, "title": title})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})

    def post(self, request, paper_log_id):
        cursor = connection.cursor()
        if request.user.is_authenticated():
            papername = request.POST.get("papername")
            answerlog_id = request.POST.getlist("answerlog_id")
            
            print answerlog_id
            totalscore = 0
            for answerlog_id_item in answerlog_id:
                score = request.POST.get(answerlog_id_item)
                if not score:
                    score = 0
                sql = "update operate_useranswerlog set score='" + str(score) + "' where id=" + answerlog_id_item
                cursor.execute(sql)
                totalscore += int(score)

            sql = "update coures_userpaperlog set status=2,score='" + str(totalscore) + "' where id=" + paper_log_id
            cursor.execute(sql)

            return render(request, "score.html", {"score": 0, "title": "创建题库", "msg": "评分成功"})
        else:
            return render(request, "login.html", {"msg": u'为保证考试客观公正，考题不对未登录用户开放'})


class DownloadFunView(View):
    def get(self, request, page_number):
        file_list = FileStroe.objects.all()
        return render(request, "download.html", {"file_list": file_list})


class DownAddView(View):
    def post(self, request):
        file_list = FileStroe.objects.all()
        file_id = request.POST.get("file_id")
        print "asdfsasdfasdf", file_id
        myfile = FileStroe.objects.get(pk=file_id)
        myfile.down_count += 1
        myfile.save()
        return render(request, "download.html", {"file_list": file_list})


# 创建用户回答
def createanswer(request):
    ans1 = getdata(0)
    ans2 = getdata(1)
    ans3 = getdata(2)
    for i in range(0, 500):

        userid = 20+i
        print userid
        paperlogid = UserAnswerLog.objects.aggregate(Max('paper_log_id')).get('paper_log_id__max')+1

        answer = UserAnswerLog()
        answer.user = UserProfile.objects.get(id=userid)
        answer.answer = ans1[i]
        answer.paper_log_id = paperlogid
        answer.paper_id = 16
        answer.save()

        answer2 = UserAnswerLog()
        answer2.user = UserProfile.objects.get(id=userid)
        answer2.answer = ans2[i]
        answer2.paper_log_id = paperlogid
        answer2.paper_id = 17
        answer2.save()

        answer3 = UserAnswerLog()
        answer3.answer = ans3[i]
        answer3.paper_log_id = paperlogid
        answer3.user = UserProfile.objects.get(id=userid)
        answer3.paper_id = 18
        answer3.save()
    return HttpResponse("ss")


# 创建考试记录
def createuserpaperlog(request):
    for i in range(0, 500):
        UserPaperLog.objects.create(paper_name_id=5, user_id=20+i, status=1)
    return HttpResponse("ss")
