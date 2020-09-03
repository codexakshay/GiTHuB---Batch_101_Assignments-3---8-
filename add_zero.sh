#!/bin/bash -x
while [ True ]
do
a=0
while [ $a -lt 3 ]
do
num=`shuf -i 1-5 -n 1`
if [ $num -eq $((${arr[$a]})) ]
then
num=$(($num*-1))
else
num=$(($num-1))
fi
arr[((a))]=$num
a=$(($a+1))
done
echo ${arr[@]}
sum=$((${arr[0]} + ${arr[1]} + ${arr[2]}))
if [ $(($sum)) -eq 0 ]
then
	echo "SUM OF ${arr[@]} :  ZERO"
	break;
fi
done
