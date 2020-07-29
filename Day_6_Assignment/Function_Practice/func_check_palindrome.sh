#!/bin/bash -x

read -p "Enter two numbers to check if they are palindrome or not: " num1 num2 

function checkPalindrome(){
	num=$1
	remainder=0
	reverse=""
	original=$num

	while [ $num -gt 0 ]
	do
		remainder=$(($num%10))
		num=$(($num/10))
		reverse=$( echo ${reverse}${remainder} )
	done

	if [ $original -eq $reverse ]
	then
		echo "$1 is a Palindrome number"
	else
		echo "$1 is Not a Palindrome number"
	fi
}

checkPalindrome $num1

checkPalindrome $num2
