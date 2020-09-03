#!/bin/bash -x
min=0 max=0
echo
for (( a=1; a<=10; a++ ))
do

n=`shuf -i 100-999 -n 1`

echo "RANDOM NUMBER #$a : "$n

declare -a array
array[((a))]=$n;

done

for i in ${array[@]}
do

    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i

done

echo

echo "ARRAY LENGTH : ${#array[@]}"
echo "TOTAL  ARRAY : [ ${array[@]} ]"

echo

echo "SMALLEST NUMBER : $min"
echo "LARGEST  NUMBER : $max"

echo

smallest=${array[-1]}
secondSmallest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${array[i]}
  elif (( ${array[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${array[i]}
  fi
done

echo "2ND SMALLEST NUMBER : $secondSmallest"


largest=${array[0]}
secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "2ND LARGEST  NUMBER : $secondGreatest"
