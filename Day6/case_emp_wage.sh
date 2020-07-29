#!/bin/bash -x

isParttime=1;
isFulltime=2;
empRate=20;
randomCheck=$(( RANDOM % 3))

case $randomCheck in
$isFulltime) 
	empHrs=8
;;
$isParttime) 
	empHrs=4
;;
*) echo "Not processed"
	empHrs=0
;;
esac

salary=$(($empHrs*$empRate))

echo "Salary : $salary"
