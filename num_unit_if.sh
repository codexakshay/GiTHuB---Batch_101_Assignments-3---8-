read -p "ENTER NUMBER : " x

if [ $(($x)) -ge 0 ] && [ $(($x)) -le 9 ] 
	then
	echo "$x : UNIT / SINGLE DIGIT"
fi

if [ $(($x)) -ge 10 ] && [ $(($x)) -le 99 ]
        then
        echo "$x : TENS"
fi

if [ $(($x)) -ge 100 ] && [ $(($x)) -le 999 ]
        then
        echo "$x : HUNDREDS"
fi

if [ $(($x)) -ge 1000 ] && [ $(($x)) -le 9999 ]
        then
        echo "$x : THOUSANDS"
fi

if [ $(($x)) -gt 9999 ]
        then
        echo "$x : 10K+ VALUE : VALUE RANGE (0 - 9999)"
fi

if [ $(($x)) -lt 0 ]
        then
        echo "$x : -VE VALUE : VALUE RANGE (0-9999)"
fi


