#!/bin/sh

#调用此shell脚本 ./getScriptName.sh 1 2

#输出当前shell脚本名称
PRG="$0"
#输出参数列表
paramlist="$@"
#输出第二个参数
arg2=$2
echo $PRG $paramlist $arg2

#输出 传入的参数的个数
echo $#


#shift销毁前面X个参数 并将参数前移X X默认为1

#在参数不确定的情况下，打印出所有的参数
#重点：其原理类似于队列。
#运用shift(shift 1) 命令每执行一次，变量的个数($#)
#减一（之前的$1变量被销毁,之后的$2就变成了$1），而变量值提前一位。

while [ $# != 0 ];do
echo "第一个参数为：$1,参数个数为：$#"
shift
done

#shift n后，前n位参数都会被销毁，比如：
#输入5个参数： a b c d e
# 那么$1=a,$2=b,$3=c,$4=d,$5=e,执行shift 3操作后。
#前3个参数a、b、c被销毁，就剩下了2个参数：d,e
#（这时d=$1,e=$2，其中d由$4—>$1,e由$5—>$2）,参考示例如下：


# 这个地方看不懂可以去了解一下 shell的 seq 关键字 与 eval关键字
echo "参数个数为：$#,其中："
for i in $(seq 1 $#)
do
  eval j=\$$i
  echo "第$i个参数($"$i")：$j"
done
 
shift 3
 
echo "执行shift 3操作后："
echo "参数个数为：$#,其中："
for i in $(seq 1 $#)
do
  #通过eval把i变量的值($i)作为变量j的名字
  eval j=\$$i
  echo "第$i个参数($"$i")：$j"
done


