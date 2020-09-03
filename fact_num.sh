#!/bin/bash -x
echo -e "\nEnter Number : \c"
read num
echo
fact=1

echo  -e "Factorial Series : \c"
while [ $num -gt 1 ]
do
  fact=$((fact * $num))
  num=$(($num - 1))
echo -e "$fact \c"
done

echo -e "\n\nFacorial is : $fact \n"
