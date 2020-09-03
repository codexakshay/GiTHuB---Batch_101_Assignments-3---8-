#!/bin/bash -x
i=1
echo "Rectangle Plot Unit Conversion program"
echo "-----------"
echo "1. m to ac"
echo "2. ac to m"
echo "-----------"

while [ $(($i)) -le 25 ]
do
echo
read -p "Enter Choice # $i: " c
read -p "Enter length of plot : " x
read -p "Enter width of plot : " y

z=0
v=4046.86
z=$(($x*$y))
case $c in
	1)
		ans=`echo $z $v | awk '{print $1 / $2}'`
		echo "m -> ac ($z m) : $ans ac";
		;;
	2)
		ans=`echo $z $v | awk '{print $1 * $2}'`
		echo "ac -> m ($z ac): $ans m";
		;;
	*)
		echo "Invalid Choice : $c";
esac
	i=$((i+1));
done
