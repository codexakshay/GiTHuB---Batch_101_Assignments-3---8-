read -p "ENTER NUMBER : " x

if [ $(($x)) -eq 0 ]
then
        echo "INVALID INPUT"
fi

if [ $(($x)) -eq 1 ]
then
        echo "SUNDAY"
fi

if [ $(($x)) -eq 2 ]
then
        echo "MONDAY"
fi

if [ $(($x)) -eq 3 ]
then
        echo "TUESDAY"
fi

if [ $(($x)) -eq 4 ]
then
        echo "WEDNESDAY"
fi

if [ $(($x)) -eq 5 ]
then
        echo "THURSDAY"
fi

if [ $(($x)) -eq 6 ]
then
        echo "FRIDAY"
fi

if [ $(($x)) -eq 7 ]
then
        echo "SATURDAY"
fi

if [ $(($x)) -gt 7 ]
then
        echo "INVALID VALUE"
fi

if [ $(($x)) -lt 0 ]
then
        echo "-VE VALUE"
fi
