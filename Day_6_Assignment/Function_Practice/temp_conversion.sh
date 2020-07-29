#!/bin/bash 

echo "1) Degree C to Degree F "
echo "2) Degree F to Degree C "

read -p "Enter your choice: " choice


function convertCtoF(){
	echo "Temperature in degree F: "
	awk 'BEGIN {print '$d'*1.8+32}'
}

function convertFtoC(){
	echo "Temperature in degree C: "
	awk 'BEGIN {print ('$f'-32)*0.5555}'
}

case  $choice in
1) read -p "Enter temperature in degree C(0 to 100): " d

	 convertCtoF $d
;;
2) read -p "Enter temperature in degree F(32 to 212): " f

	convertFtoC $f
;;
*) echo "Invalid Choice "
;;

esac
