array=(-4 -1 -1 0 1 2 3)
i=0
j=0
k=0
flag=0
echo "Triplates Whose Sum Is Zero"
for ((i=0;i<${#array[@]}-2;i++))
do
for ((j=$i+1;j<${#array[@]}-1;j++))
do
for ((k=$j+1;k<${#array[@]};k++))
do
        if (( ${array[i]} + ${array[j]} + ${array[k]} == 0 ))
        then
                echo "[${array[i]},${array[j]},${array[k]}]"
                flag=1
        fi
done
done
done
