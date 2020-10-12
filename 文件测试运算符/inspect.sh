#/bin/sh

#各种判断文件的测试运算符

#所有shell文件判断 再中括号里面进行

#括号和命令直接需要有空格 如： [ -d $dir ]  不可以扭在一起 [-d $dir]

#引用时可以加“” 也可以不加 

dir=~/shellScript/文件测试运算符/$0;

echo $dir

if [ -d $dir ]
then
	echo '是文件夹'
else
	echo '不是文件夹'
fi

if [ -f $dir ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi
