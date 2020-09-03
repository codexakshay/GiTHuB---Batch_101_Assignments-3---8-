#!/bin/bash -x
read -p "Enter Number : " n
for ((i=2; i<=$n/2; i++))
do
  if [ $(($n%$i)) -eq 0 ]
  then
    echo "$n IS NOT PRIME NUMBER"
	exit
  fi
done
sd=0
rev=""
on=$n
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${sd} )
done

if [ $on -eq $rev ];
then
  echo "NUMBER IS BOTH PRIME AND PALINDROME"
else
  echo "NUMBER IS PRIME BUT NOT PALINDROME"
fi
