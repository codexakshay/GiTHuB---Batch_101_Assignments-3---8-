#!/bin/bash -x
echo
for (( a=1; a<=10; a++ ))
do

n=`shuf -i 100-999 -n 1`

echo "Num # $a : "$n

declare -a array
array[((a))]=$n;

done

sorted_array=($(echo ${array[@]}| tr " " "\n" | sort -n))

echo

echo "Array Length : ${#array[@]}"
echo "Full Array : ${array[@]}"
echo "Sorted Array : ${sorted_array[@]}"

echo

echo "2nd Smallest random number in an array : ${sorted_array[1]}"
echo "2nd Largest random number in an array : ${sorted_array[-2]}"

echo
