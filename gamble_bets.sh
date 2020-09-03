#!/bin/bash -x
s_m=100
bet=0;
win=0;
lose=0
while [ True ]
do
bet=$(($bet+1))
s_m=$(($s_m+1))
result=`shuf -i 1-2 -n 1`
if [ $result -eq 1 ]
then
        echo -e "\n   WIN"
        s_m=$(($s_m+5)) # Reward money increased to Rs. 5 beacuse win with Rs. 1 reward goes over 500 bets
	win=$(($win+1))

elif [ $result -eq 2 ]
then
        echo -e "\n   LOSE"
        s_m=$(($s_m-1))
	lose=$(($lose+1))

fi

if [ $s_m -ge 200 ]
then
	echo -e MONEY : $s_m
	echo -e "\nRs . 200+ CONGRATULATIONS!"
	echo -e "\n[ WIN : $win ]"
	echo -e "[ BETS : $bet ]"
	echo -e "[ LOSE : $lose ]"
	exit

elif [ $s_m -le 0 ]
then
	echo -e MONEY : $s_m
	echo -e "\nYOU ARE BROKE ! BYE BYE !"
	echo -e "\n[ WIN : $win ]"
	echo -e "[ BETS : $bet ]"
	echo -e "[ LOSE : $lose ]"
	exit
elif [ $bet -eq 100 ]
then
	echo -e MONEY : $s_m
	echo -e "\nDON'T WASTE CASINO'S TIME"
        echo -e "\n[ WIN : $win ]"
        echo -e "[ BETS : $bet ]"
	echo -e "[ LOSE : $lose ]"
	exit
fi
echo -e MONEY : $s_m
done
