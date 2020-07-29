#!/bin/bash -x

i=1;
j=1;
N=5;
max=0;
min=0;

while [ $i -le $N ]
do
	num=$(( RANDOM % 1000 ))
	if [ $i -eq 1 ]
	then
		max=$num
	else
		if [ $num -gt $max ]
		then
			max=$num
		fi
	fi
	i=$((i+1))
done

echo "Largest number" $max

while [ $j -le $N ]
do
	num=$(( RANDOM % 1000))
	if [ $j -eq 1 ]
	then
		min=$num
	else
		if [ $num -lt $min ]
		then
			min=$num
		fi
	fi
	j=$((j+1))
done

echo "Smallest number" $min
