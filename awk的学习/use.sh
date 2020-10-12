#awk是每一行处理器-F分割的是一行中 以XXX为界分割出来的字符串



file=/Users/xuhongzhi/shellScript/awk的学习/file



echo 1 **错误示范**
awk '这' $file

echo 2 ***匹配不含“这”的行***
awk  '!/这/' $file

echo 3 ***匹配含有“这”的行***
awk  '/这/' $file


echo 4 ***匹配通过'.'分割的文件查找匹配分割后第一段 的这  $1匹配指定内容才显示***
awk -F. '$1~/这/' $file

echo 5 ***通过":"分割输出第一行和第三行***

awk -F: '{print $1,$3}'  $file

echo 6 ***使用if语句 如果通过.分割的第一行 存在'这'就输出第二行
awk -F. '{if($1~/这/){print $2} else{print $1}}'  $file
