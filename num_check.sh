read -p "Enter number : " x

if [ $(($x)) -eq 0 ]
then
        echo "Zero"
fi

if [ $(($x)) -eq 1 ]
then
        echo "One"
fi

if [ $(($x)) -eq 2 ]
then
        echo "Two"
fi

if [ $(($x)) -eq 3 ]
then
        echo "Three"
fi

if [ $(($x)) -eq 4 ]
then
        echo "Four"
fi

if [ $(($x)) -eq 5 ]
then
        echo "Five"
fi

if [ $(($x)) -eq 6 ]
then
        echo "Six"
fi

if [ $(($x)) -eq 7 ]
then
        echo "Seven"
fi

if [ $(($x)) -eq 8 ]
then
        echo "Eight"
fi

if [ $(($x)) -eq 9 ]
then
        echo "Nine"
fi

if [ $(($x)) -gt 9 ]
then
        echo "2 digit value"
fi

if [ $(($x)) -lt 0 ]
then
        echo "-ve value"
fi
