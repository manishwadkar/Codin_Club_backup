#!/bin/bash 

read -p "Enter a number which is supposed to be the power of 2: " num

i=1
result=1

while [ $i -le $num ]
do
	result=$(($result*2))
	echo "2^$i $result"
	((i++))

	if [ $result -eq 256 ]
	then
		echo "result value reached $result "
		exit
	fi
done



