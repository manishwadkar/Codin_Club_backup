#!/bin/bash 

read -p "Enter count of integers whose sum is to be checked if zero or not: " n

declare -a zero_array
counter=0
sum=0;

for (( i=0 ; i<$n ; i++ ))
do
	read -p "Enter an integer(+ve or -ve) : " num
	zero_array[((counter++))]=$num
done

echo "Input received " ${zero_array[@]}

for (( i=0 ; i<$n ; i++ ))
do
	sum=$(($sum+${zero_array[i]}))
done

echo "Sum: " $sum

if [ $sum -eq 0 ]
then
	echo "Sum of the integers adds to ZERO!!"
else
	echo "Sum of the integers doesn't adds to ZERO!!"
fi
