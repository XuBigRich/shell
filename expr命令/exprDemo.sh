#/bin/sh

#expr命令是一个手工命令行计数器，用于在UNIX/LINUX下求表达式变量的值，一般用于整数值，也可用于字符串。

#用空格隔开每个项；
#用反斜杠 \ 放在 shell 特定的字符前面；
#对包含空格和其他特殊字符的字符串要用引号括起来


#计算字符串长度
expr length "this is a test"

#抓取字符串 从第几个往后抓取几个 从第三个 往后抓取4个字符串
expr substr “this is a test” 3 4

#抓取第一个字符数字串出现的位置
expr index "sarasara"  a

#还可以用于运算
expr 14 % 9

# (使用乘号时，必须用反斜线屏蔽其特定含义。因为shell可能会误解显示星>号的意义)
expr 30 \* 3 
 90
