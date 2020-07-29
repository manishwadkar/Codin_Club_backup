#!/bin/bash -x

isFulltime=1
isParttime=2
wagePerHour=20
days=5
c=0

for (( c=0; c<=$days; c++ ))
do
	randomCheck=$(( RANDOM%3 ))
	case $randomCheck in
	$isFulltime)	empHrs=8
	;;
	$isParttime)	empHrs=4
	;;
	*)	empHrs=0
	;;
	esac
	salary=$(($empHrs*$wagePerHour))
	salary_array[c]=$salary
done

echo ${salary_array[@]}