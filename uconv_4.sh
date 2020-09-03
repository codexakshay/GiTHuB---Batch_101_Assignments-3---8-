#!/bin/bash -x
	echo "Unit Conversion program"
	echo "-----------"
	echo "1. ft to in"
	echo "2. in to ft"
	echo "3. ft to m"
	echo "4. m to ft"
	echo "-----------"
	read -p "Enter Choice: " c
	read -p "Enter value to convert : " x
	case $c in
        	1)
                	ans=`echo $x | awk '{print  $1*12}'`
               	 	echo "ft -> in ($x ft) : $ans in";
                	;;
        	2)
                	ans=`echo $x | awk '{print  $1/12}'`
                	echo "in -> ft ($x in) : $ans ft";
                	;;
                3)
			ans=`echo $x | awk '{print  $1/3.28}'`
                	echo "ft -> m ($x ft) : $ans m";
                	;;
        	4)
                	ans=`echo $x | awk '{print  $1*3.28}'`
                	echo "m -> ft ($x m) : $ans ft";
              		;;
		*)
                	echo "Invalid Choice : $c";
	esac
