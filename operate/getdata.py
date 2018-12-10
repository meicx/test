# encoding=utf8

import xlrd
from TestOnlineExam.settings import answerdata

# 从文件中获取数据
def getdata(num):
    res = []
    data = xlrd.open_workbook(answerdata)
    
    table = data.sheets()[num]
    
    nrows = table.nrows  # 行数
    ncols = table.ncols  # 列数
    
    for i in range(0, nrows):
        rowValues= table.row_values(i)  # 某一行数据
        for item in rowValues:
            res.append(item)
    return res