read -p 'Enter Number : ' n
case $n in
        	1) echo "UNIT/ONES" ;;
        	10) echo "TENS" ;;
        	100) echo "HUNDREAD" ;;
        	1000) echo "THOUSAND" ;;
          	*) echo "Incorrect Input" ;;
	esac
