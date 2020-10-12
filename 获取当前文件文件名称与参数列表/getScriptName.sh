#!/bin/sh

#调用此shell脚本 ./getScriptName.sh 1 2

#输出当前shell脚本名称
PRG="$0"
#输出参数列表
paramlist="$@"
#输出第二个参数
arg2=$2
echo $PRG $paramlist $arg2
