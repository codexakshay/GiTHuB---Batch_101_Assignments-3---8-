dice_a=`shuf -i 1-6 -n 1`
dice_b=`shuf -i 1-6 -n 1`
dice_r=$(($dice_a + $dice_b))
echo "Addition of dice($dice_a + $dice_b) : $dice_r";
