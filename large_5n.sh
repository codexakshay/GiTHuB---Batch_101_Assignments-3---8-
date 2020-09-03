#!/bin/bash -x
i=1
max=0
while [ $i -le 5 ]
do
num=`shuf -i 100-999 -n 1`
echo $num 
if [ $i -eq 1 ]
then
	max=$num
else
      	if [ $num -gt $max ]
      	then
        max=$num
	fi
fi
i=$((i + 1))
done
echo LARGEST NUMBER : $max
