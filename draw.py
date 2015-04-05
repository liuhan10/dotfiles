#!/usr/bin/env python
# coding:utf-8
# author:ember

from random import randint
import sys
stulist = ["谢毅泽", "吴先", "黄挺", "东帅亮", "黄晟", "陈嘉乐", "柴明轩",
           "姜雨萌", "陈希", "武守北", "张浩千", "张欣勃", "钱莹", "史舒扬",
           "浦隽瑾"]
grouplist = ["张浩千,柴明轩,史舒扬", "谢毅泽,吴先,武守北", "张欣勃,姜雨萌,陈嘉乐",
             "东帅亮,浦隽瑾,黄挺", "钱莹,陈希,黄晟"]

if len(sys.argv) >= 2:
    if sys.argv[1] == 'u':
        l = stulist
    if sys.argv[1] == 'g':
        l = grouplist
else:
    l = stulist

if len(sys.argv) >= 3:
    count = int(sys.argv[2])
else:
    count = len(l)

ans = []
for i in range(0, count):
    tmp = randint(1, len(l)) - 1
    while tmp in ans:
        tmp = randint(1, len(l)) - 1
    ans.append(tmp)
    print l[ans[i]]
    if len(sys.argv) <= 2:
        raw_input("")
