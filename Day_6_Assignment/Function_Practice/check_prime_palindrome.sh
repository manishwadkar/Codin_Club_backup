#!/bin/bash 

read -p "Enter a number: " num

function check_if_Prime(){
	temp=$1
	i=2
	f=0
	while [ $i -le `expr $temp / 2` ]
	do
		if [ `expr $temp % $i` -eq 0 ]
		then
			f=1
		fi
		i=`expr $i + 1`
	done
	if [ $f -eq 1 ]
	then
		echo "$temp is not a prime number "
	else
		echo "$temp is a prime number "
	fi
}

function get_Palindrome(){
	remainder=0
	reverse=""
	original=$num

	while [ $num -gt 0 ]
	do
		remainder=$(($num%10))
		num=$(($num/10))
		reverse=$( echo ${reverse}${remainder} )
	done

	echo $reverse
	if [[ $original -eq $reverse ]]
	then
		echo "$original is a Palindrome number"
	else
		echo "$original is Not a Palindrome number"
	fi
}

check_if_Prime $num

reverse_p=$(get_Palindrome) 

echo $reverse_p

check_if_Prime $reverse_p

