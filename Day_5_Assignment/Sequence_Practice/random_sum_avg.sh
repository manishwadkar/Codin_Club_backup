#!/bin/bash -x

#Read 5 two digit random numbers and print its sum and average

i=1;
n=5;
sum=0;

while [ $i -le $n ]
do
	num=$(( RANDOM % 100 ))
	sum=$(( $sum + $num ))
	i=$(( i + 1 ))
done

echo "Sum of five random two digit numbers: " $sum

echo "Average: "

awk 'BEGIN {print '$sum'/'$n'}'


