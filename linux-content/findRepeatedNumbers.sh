#!/bin/bash

arr[((counter++))]=1
arr[((counter++))]=2
arr[((counter++))]=3
arr[((counter++))]=1
arr[((counter++))]=2
arr[((counter++))]=3

echo ${arr[@]}
n=${#arr[@]}

echo $n

flag=0
for((i=0;i<$n;i++))
do
	for((j=$i+1;j<$n;j++))
	do
		if [[ ${arr[$i]} -eq ${arr[$j]} ]]
		then
			flag=1
		fi
	done
done

if [ $flag -eq 1 ]
then
	echo "There are numbers repeated"
else
	echo "Numbers in the array are not repeated"
fi
