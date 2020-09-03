echo
echo MIN-MAX-OF-4-EQ-ANSWERS
echo
read -p "Enter Number #1 : " a
read -p "Enter Number #2 : " b
read -p "Enter Number #3 : " c
echo
op1=$(($a+$b*$c))
	echo "op1 (a + b x c) : $op1"
op2=$(($a%$b+$c))
	echo "op2 (a % b + c) : $op2"
op3=$(($c+$a/$b))
	echo "op3 (c + a / b) : $op3"
op4=$(($a*$b+$c))
	echo "op4 (a x b + c) : $op4"

max=$(($op1))

if [ $(($op2)) -gt $(($max)) ]
        then
        max=$(($op2))


elif [ $(($op3)) -gt $(($max)) ]
        then
        max=$(($op3))

elif [ $(($op4)) -gt $(($max)) ]
        then
        max=$(($op4))
fi

echo
echo "MAXIMUM VALUE IS : $max"


min=$(($op3))

if [ $(($op1)) -lt $(($min)) ]
        then
        min=$(($op1))


elif [ $(($op2)) -lt $(($min)) ]
        then
        min=$(($op2))

elif [ $(($op4)) -lt $(($min)) ]
        then
        min=$(($op4))
fi

echo
echo "MINIMUM VALUE IS : $min"
