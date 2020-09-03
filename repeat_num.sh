#!/bin/bash -x
a=0
declare -a arr
for (( n=1;n<=100;n++ ))
do
if [ $n -gt 0 ]
then
a=`expr $n / 10`
b=`expr $n % 10`
c=`expr $b \* 10 + $a`
fi
if [ $c -eq $n ]
then
arr[((a))]=$n
a=$(($a+1))
fi
done
echo Repeated Numbers : ${arr[@]}

