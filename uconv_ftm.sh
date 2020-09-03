#!/bin/bash -x
echo "Rectangle Plot Unit Conversion program"
echo "-----------"
echo "1. ft to m"
echo "2. m to ft"
echo "-----------"
read -p "Enter Choice: " c
read -p "Enter length : " x
read -p "Enter width :" y
z=0
v=3.28
z=$(($x*$y))
case $c in
	1)
		ans=`echo $z $v | awk '{print $1/$2}'`
		echo "ft -> m : $ans m";
		;;
	2)
		ans=`echo $z $v | awk '{print $1*$2}'`
		echo "m -> ft : $ans ft";
		;;
	*)
		echo "Invalid Choice : $c";
esac
