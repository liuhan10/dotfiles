#coding:utf-8
#author:ember

from random import randint
import sys
stulist = ["谢毅泽","吴先","黄挺","东帅亮","黄晟","陈嘉乐","柴明轩","姜雨萌","陈希","武守北","张浩千","张欣勃","钱莹","史舒扬","浦隽瑾"]
grouplist = [["张浩千","柴明轩","史舒扬"],["谢毅泽","吴先","武守北"],["张欣勃","姜雨萌","陈嘉乐"],["东帅亮","浦隽瑾","黄挺"],["钱莹","陈希","黄晟"]]

if len(sys.argv) >= 3:
    count = sys.argv[2]
else:
    count = 1
if len(sys.argv) >= 2:
    if sys.argv[1] == 'u':
        l = stulist
    if sys.argv[1] == 'g';
        l = grouplist
else:
    l = stulist

for i in range(1,count):
    print l[randint(1,i)]

