#!/bin/bash 

echo "1. Feet to inch"
echo "2. Feet to meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"

read -p "Enter your choice(1 to 4): " choice
read -p "Enter a number to perform above operation: " num

case $choice in
1)  	echo "Feet: " $num
	echo "Converting Feet to inch"
	result=`expr $num \* 12`
	echo "Inches : $result"
;;
2) 	echo "Feet: " $num
	echo "Converting feet to meter"
	echo "Meter: "
	awk 'BEGIN {print '$num'*0.3048}'
;;
3) 	echo "Inch: " $num
	echo "Converting inch to feet"
	result=`expr $num / 12 `
	echo "Feet: $result"
;;
4) 	echo "Meter: " $num
	echo "Converting meter to feet"
	echo "Feet: "
	awk 'BEGIN {print '$num'*3.28}'
;;
*) echo "No operation to do"
;;
esac
