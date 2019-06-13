import MySQLdb
import json
import os

# 定义查询SQL语句
os.getcwd()
sql = "SELECT * FROM finally.user_information;"

# 设置列的别名或者直接用表字段名:（下面的sql含有别名）




# 定义连接MySQL的登录信息（此处以字典形式）
Loginfo = {'USER':'root', 'PSWD':'x5', 'HOST':'127.0.0.1', 'PORT':3306}


# Python 连接MySQL
conn=MySQLdb.connect(host=Loginfo['HOST'],user=Loginfo['USER'],passwd=Loginfo['PSWD'],port=Loginfo['PORT'],charset='utf8')
cur=conn.cursor()
cur.execute(sql)                        # 执行SQL查询
data = cur.fetchall()                   # 查询结果给data。如果执行：print data 显示结果：（（第一行内容），（第二行内容），（第三行内容），（第四行内容））
fields = cur.description               # 获取查询结果中列的字段名，如果查询SQL中使用别名，此处显示别名。       
cur.close()
conn.close()

# Main 
column_list = []                        # 定义字段名的列表
for i in fields:
    column_list.append(i[0])    # 提取字段名，追加到列表中
#print column_list　　　　　　　   # 列表显示结果：

with open(r'd:\1\python\json.txt','w+') as f:    # 打开输出结果文件
    for row in data:                                    # 一次循环，row代表一行，row以元组的形式显示。
        result = {}                                     # 定义Python 字典
        result[column_list[0]] = str(row[0])                 # 将row中的每个元素，追加到字典中。　
        result[column_list[1]] = str(row[1])            # Python字段格式 和json字段格式转换
        result[column_list[2]] = str(row[2]) 
        result[column_list[3]] = str(row[3])
        result[column_list[4]] = str(row[4])
        jsondata=json.dumps(result,ensure_ascii=False) # Python的dict --转换成----> json的object
        f.write(jsondata + '\n')                        # 写入文件
f.close()         
