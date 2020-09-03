#!/bin/bash -x
echo -e "ENTER NUMBER : \c"
read n
sum=0
echo
echo "HARMONIC NUMBER SERIES"
for ((i=1;i<=$n;i++))
do
sum=`expr $sum + \( 10000 / $i \)`
i=`expr $i`
if [ $(($i)) -lt $n ]
then
	if [ $(($i)) -eq 1 ]
	then
		echo -e "1 + \c"
	else
		echo -e "1/$i + \c"
	fi
else
echo 1/$i
fi
done
echo
echo SUM OF HARMONIC SERIES
for ((i=1;i<=5;i++))
do
a=`echo $sum | cut -c $i`
echo -e "$a\c"
if [ $i -eq 1 ]
then
echo -e ".\c"
fi
i=`expr $i`
done
echo
