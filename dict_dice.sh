declare -A dict
one=0
two=0
three=0
four=0
five=0
six=0
for ((a=0;i<=50;a++))
do
dice=`shuf -i 1-6 -n 1`
if [ $dice -eq 1 ]
then
        echo -e "Roll # $a : ONE"
        one=$(($one+1))
	one_count=$one
        if [ $one -eq 10 ]
        then
                echo -e "\n--ONE-WINS--"
                break;
        fi

elif [ $dice -eq 2 ]
then
        echo -e "Roll # $a : TWO"
        two=$(($two+1))
	two_count=$two
        if [ $two -eq 10 ]
        then
                echo -e "\n--TWO-WINS--"
                break
      	fi

elif [ $dice -eq 3 ]
then
        echo -e "Roll # $a : THREE"
        three=$(($three+1))
        three_count=$three
	if [ $three -eq 10 ]
        then
                echo -e "\n--THREE-WINS--"
                break
        fi

elif [ $dice -eq 4 ]
then
        echo -e "Roll # $a : FOUR"
        four=$(($four+1))
	four_count=$four
        if [ $four -eq 10 ]
        then
                echo -e "\n--FOUR-WINS--"
                break
        fi

elif [ $dice -eq 5 ]
then
        echo -e "Roll # $a : FIVE"
        five=$(($five+1))
	five_count=$five
        if [ $five -eq 10 ]
        then
                echo -e "\n--FIVE-WINS--"
                break
        fi

elif [ $dice -eq 6 ]
then
        echo -e "Roll # $a : SIX"
        six=$(($six+1))
        six_count=$six
	if [ $six -eq 10 ]
        then
                echo -e "\n--SIX-WINS--"
                break
        fi

fi
dict[(($a))]=$dice

done
echo -e "\n[ ONE : $one ]"
echo -e "[ TWO : $two ]"
echo -e "[ THREE : $three ]"
echo -e "[ FOUR : $four ]"
echo -e "[ FIVE : $five ]"
echo -e "[ SIX : $six ]"
echo -e "\n"
echo "Dictionary : [ ${dict[@]} ]"

max=9
if [ $six_count -gt $max ]
then
	max_p="SIX"
	max=$six_count

elif [ $five_count -gt $max ]
then
	max_p="FIVE"
	max=$five_count
elif [ $four_count -gt $max ]
then
	max_p="FOUR"
        max=$four_count
elif [ $three_count -gt $max ]
then
	max_p="THREE"
        max=$three_count
elif [ $two_count -gt $max ]
then
	max_p="TWO"
        max=$two_count
elif [ $one_count -gt $max ]
then
	max_p="ONE"
        max=$one_count
fi

echo "MAX IS $max_p : $max TIMES "

min=$one
if [ $six_count -lt $min ]
then
        min_p="SIX"
        min=$six_count

elif [ $five_count -lt $min ]
then
        min_p="FIVE"
        min=$five_count
elif [ $four_count -lt $min ]
then
        min_p="FOUR"
        min=$four_count
elif [ $three_count -lt $min ]
then
        min_p="THREE"
        min=$three_count
elif [ $two_count -lt $min ]
then
        min_p="TWO"
        min=$two_count
elif [ $one_count -lt $min ]
then
        min_p="ONE"
        min=$one_count
fi

echo "MIN IS $min_p : $min TIMES "
