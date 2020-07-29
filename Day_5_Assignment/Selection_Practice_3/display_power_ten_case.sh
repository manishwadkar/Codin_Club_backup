#!/bin/bash -x

read -p "Enter a number in powers of ten: " num

case $num in
1) echo "Unit"
;;
10) echo "Ten"
;;
100) echo "Hundred"
;;
1000) echo "Thousand"
;;
10000) echo "Ten Thousand"
;;
100000) echo "Lac"
;;
1000000) echo "Ten Lac"
;;
10000000) echo "Crore"
;;
*) echo "Out of bound"
;;
esac
