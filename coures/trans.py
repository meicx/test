# encoding=utf8

import warnings
warnings.filterwarnings(action='ignore', category=UserWarning, module='gensim')
import jieba
from gensim.models import word2vec
from TestOnlineExam.settings import file_path


# 加载停用词
def getstopwords():
    stpwrdpath = file_path
    stpwrd_dic = open(stpwrdpath, 'rb')
    stpwrd_content = stpwrd_dic.read()
    stpwrdlst = stpwrd_content.splitlines()
    stpwrd_dic.close()
    return stpwrdlst


# 采用jieba分词对文本进行分词
def cutword(document):
    stpwrdlst = getstopwords()
    document_cut = jieba.cut(document)
    res = []
    for i in document_cut:
        i = i.encode('utf8')
        if i not in stpwrdlst:
            res.append(i)
    # result = ' '.join(document_cut)
    # result = result.encode('utf-8')
    return res


# 计算欧拉距离
def getEulideandistance(p, q):
    res = 0.0
    T = len(p)
    for i in range(T):
        res += (p[i] - q[i]) ** 2
    return res


# 计算WDC距离举证
def getdistancematrix(sentences, model, size):
    res = []
    for doc in sentences:
        dic = {}
        Xd = [0.0 for _ in range(size)]
        T = len(doc)
        for word in doc:
            tmp = dic.get(word, 0)
            dic[word] = tmp + 1
        for i in dic:
            for j in range(size):
                Xd[j] += float(dic[i]) / T * model[i][j]
        res.append(Xd)
    return res

