#!/bin/bash -x
h=0
t=0
i=0
while [ True ]
do
coin=`shuf -i 1-2 -n 1`
if [ $coin -eq 1 ]
then 
	echo -e "\n<HEADS>"
	h=$(($h+1))
	if [ $h -eq 11 ]
	then
		echo -e "\n--HEADS-WINS--"
		break;
	fi

elif [ $coin -eq 2 ]
then
	echo -e "\n>TAILS<"
	t=$(($t+1))
	if [ $t -eq 11 ]
	then
		echo -e "\n--TAILS-WINS--"
		break
	fi
fi

done
echo -e "\n[ HEADS : $h ]"
echo -e "[ TAILS : $t ]"

