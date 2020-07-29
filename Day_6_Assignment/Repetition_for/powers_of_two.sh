#!/bin/bash 

read -p "Enter a number which is supposed to be the power of 2: " n

result=1

for (( i=0 ; i<=$n ; i++ ))
do
	if [ $i -eq 0 ]
	then
		echo "2^$i $result"
	else
		result=$(($result*2))
		echo "2^$i $result"
	fi
done

