#/bin/bash

# seq 1 10
#结果是1 2 3 4 5 6 7 8 9 10
#例二：
for i in `seq 1 10`;
do
echo $i;
done
#或者用
for i in $(seq 1 10)
do
echo $i;
done
