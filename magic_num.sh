#!/bin/bash -x
num=0
function find_magic
{
        num=$1
        if [ $(($num%9)) -eq 1 ]
        then
                echo "THIS IS A MAGIC NUMBER"
        else
                echo "THIS IS NOT A MAGIC NUMBER"
        fi
}

start=1
end=100
echo " THINK, ANY NUMBER FROM 1 TO 100 :"
flag=0
while [ $flag = 0 ]
do
        middle=$(( $(( $start+$end )) / 2 ))
        echo "1. MY NUMBER IS : "$middle
        echo "2. YOUR NUMBER IS LESS THAN MY NUMBER ? "
        echo "3. YOUR NUMBER IS GREATER THAN MY NUMBER ?"
        echo "CHECK YOUR NUMBER"
        read -p "ENTER YOUR CHOICE : " choice
        case $choice  in
        1)
        echo "YOUR NUMBER IS : $middle"
        find_magic $middle
	break
        ;;
        2)
        end=$middle
        ;;
        3)
        start=$middle
        ;;
        *)
        echo "INVALID CHOICE"
        ;;
        esac
done
