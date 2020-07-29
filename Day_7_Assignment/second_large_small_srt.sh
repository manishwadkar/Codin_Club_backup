#!/bin/bash 

read -p "Enter count of numbers to be stored in array: " n

echo "Generating random three digit numbers and storing in an array"

for (( i=0 ; i<$n ; i++ ))
do
        rand=$(($(($RANDOM%900))+99))
        arr_ex[i]=$rand
done

echo "Array before sorting: "
printf '%s\n' "${arr_ex[@]}"

for (( i = 0; i < $n ; i++ ))
do
	for (( j = $i; j < $n ; j++ ))
   	do
      		if [[ ${arr_ex[$i]} -gt ${arr_ex[$j]} ]]
	 	then
           		temp=${arr_ex[$i]}
           		arr_ex[$i]=${arr_ex[$j]}
           		arr_ex[$j]=$temp
      		fi
   	done
done

echo "Array after sorting: "

for (( i=0 ; i<n ; i++ ))
do
	echo ${arr_ex[$i]}
done

echo "Second smallest element in the array: "
printf '%s\n' "${arr_ex[1]}"

echo "Second largest element in the array: "
printf '%s\n' "${arr_ex[$n-2]}"

