declare -a arr
for ((a=0;a<=100;a++))
do
num=$a
check_1=`grep $num | awk -F : '{print $1}'`
check_2=`grep $num | awk -F : '{print $2}'`
if [ $check_1 -eq $check_2 ]
then
	arr[((a))]=$num
fi
done
echo ${arr[@]}
