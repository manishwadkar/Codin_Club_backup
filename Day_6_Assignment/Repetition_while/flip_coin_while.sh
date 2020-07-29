#!/bin/bash 

count1=0
count2=0
i=1

while [ $i -le 100 ]

result=$(($(($RANDOM%10))%2))

do
	echo $result
	if [ $result -eq 1 ]
	then
		echo "Heads "
		count1=$(($count1+1))
		echo "Heads count: $count1"
		((i++))

		if [ $count1 -eq 11 ]
		then
			echo "Heads wins 11 times"
			exit
		fi
	else
		echo "Tails"
		count2=$(($count2+1))
		echo "Tails count: $count2"
		((i++))

		if [ $count2 -eq 11 ]
		then
			echo "Tails wins 11 times"
			exit
		fi
	fi
done
