#!/bin/bash -x

read -p "Enter a number whose factorial is to be calculated: " num

result=1

for (( i=2 ; i<=num ; i++ ))
do
	result=$((result*i))
done

echo "Factorial of $num: " $result

