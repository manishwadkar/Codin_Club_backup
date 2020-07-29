#!/bin/bash

startmoney=100
goalmoney=200

bets=0
wins=0

trials=500

for (( t=0 ; t <= $trials ; t++ ))
do
	money=$startmoney

	while [ $money -gt 0 ] && [ $money -lt $goalmoney ]
	do
		((bets++))
		rand=$(( RANDOM % 2 ))
		if [ $rand -eq 1 ]
		then
			((money++))
		else
			((money--))
		fi
	done

	if [ $money -eq $goalmoney ]
	then
		((wins++))
	fi
done

echo "Wins: $wins"

echo "Total no of bets made: $bets"



