#!/bin/bash -x
echo "TEMPERATURE CONVERSION"
echo -e "\n1. degC to degF"
echo -e "\n2. degF to degC\n"
read -p "Enter Choice : " c
echo
read -p "ENTER TEMPERATURE : " n
echo
degf=$(( ($n*9/5) + 32 ))
degc=$(( ($n-32) * 5/9 ))
bpf=212
fpf=32
bpc=100
fpc=0
case $c in

	1)
		echo "degC ($n °C) -> degF ($degf °F)"
		if [ $degf -ge $bpf ]
		then
			echo -e "\nBOILING POINT OF WATER"
		fi
		if [ $degf -le $fpf  ]
		then
			echo -e "\nFREEZING POINT OF WATER"
		fi
		;;
	2)
		echo "degF ($n °F) -> degC ($degc °C)"
                if [ $degc -ge $bpc  ]
                then
                        echo -e "\nBOILING POINT OF WATER"
                fi
                if [ $degc -le $fpc ]
                then
                        echo -e "\nFREEZING POINT OF WATER"
                fi
                ;;
	*)
		echo -e "\nENTER VALID CHOICE"
		;;
esac
