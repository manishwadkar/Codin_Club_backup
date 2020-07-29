#!/bin/bash

echo "Asking a user to think of a number in range 1-100: "

high=100
low=1
mid=50

while [ $low -le $high ]
do
	echo "1)If your number is less than $mid then enter 1 "
	echo "2)If your number is greater than $mid then enter 2 "
	echo "3)If your number is $mid then enter 3 "
	read -p "Enter your choice: " choice
	case $choice in

	1)	high=$(($mid -1))
	;;
	2)	low=$(($mid+1))
	;;
	3)      echo "Your number is $mid !!!!"
                exit
        ;;
	*)	echo "Invalid option"
		exit
	;;
	esac
	
	mid=$(( (low+high)/2 ))
done


