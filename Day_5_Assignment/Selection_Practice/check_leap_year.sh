#!/bin/bash -x

read -p "Enter the year in format (YYYY): " y

if [ $((y % 4)) -ne 0 ]
then
	echo "$y is not a leap year"

elif [ $((y % 400)) -eq 0 ]
then
	echo "$y is a leap year"

elif [ $((y % 100)) -eq 0 ]
then
	echo "$y is not a leap year"

else
	echo "$y is a leap year"

fi
