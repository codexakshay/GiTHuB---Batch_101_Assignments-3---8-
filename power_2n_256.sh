#!/bin/bash -x
limit=256
for ((i=0;;i++))
do
	if [  $((2**$i)) -le $limit ]
	then
		echo "2^$i : $((2**$i))"
	else
		break;
	fi
done
