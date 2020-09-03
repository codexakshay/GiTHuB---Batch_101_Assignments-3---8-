#!/bin/bash -x
a=1
f_num=0
while [ $a -le 5 ]
do
	r_num=`shuf -i 10-99 -n 1`
	echo "Random # $a :  $r_num";
	f_num=$(($f_num + $r_num));
	a=$(($a+1));
done
	echo "ADDITION RESULT : $f_num";
	echo -e "AVERAGE RESULT : \c"
	echo -e $f_num | awk '{print $1/5}'
