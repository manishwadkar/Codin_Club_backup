#!/bin/bash

#inches to feet

echo "1) 12 inch = 1 ft"
read -p "Enter a number in inches to convert into feet: " f
echo "$f inch: "
awk 'BEGIN {print '$f'/12}' 
echo "ft"

echo "2) Rectangular plot with dimensions ft x ft"
read -p "Enter Length in ft: " x
read -p "Enter Breadth in ft: " y

area1=$(($x*$y))
echo "Area in square feet: " $area1

echo "Area in square metres: "
awk 'BEGIN {print '$area1'*0.0929}'

echo "3) Area of 25 plots with similar dimensions"

area2=$(($area1*25))
echo "Area in square feet: " $area2

echo "Area in square metres: "
awk 'BEGIN {print '$area2'*0.092903}'

