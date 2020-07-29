#!/bin/bash -x

read -p "Enter a number n whose nth harmonic number is to be calculated: " n

sum=0;
str=""

for (( i=1 ; i<=$n ; i++ ))
do
	if [ $i -eq 1 ]
	then
		sum=1
		str="1/$i"
	else
		sum=$(( $sum + 1/$i | bc ))
		str="$str+1/$i"
	fi
done

echo "nth harmonic number: " $sum

echo $str
