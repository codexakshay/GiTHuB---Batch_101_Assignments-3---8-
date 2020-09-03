#!/bin/bash -x
echo "Unit Conversion program"
echo "-----------"
echo "1. ft to in"
echo "2. in to ft"
echo "-----------"
read -p "Enter Choice: " c
read -p "Enter value to convert : " x
case $c in
	1)
		ans=$(($x*12))
		echo "ft -> in : $ans in";
		;;
	2)
		ans=`echo $x | awk '{print $1/12}'`
		echo "in -> ft : $ans ft";
		;;
	*)
		echo "Invalid Choice : $c";
esac

