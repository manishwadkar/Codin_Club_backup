#!/bin/bash 

declare -A dice_roll

flag=0

while [ $flag -ne 1 ]
do
	dice_value=$(( RANDOM % 6 + 1 ))

	case $dice_value in
	1)
		if [ $((dice_roll[$dice_value])) -eq 0 ]
		then
			dice_roll[$dice_value]=1
		else
			((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
		then
			echo "$dice_value occured ten times "
			echo $dice_value " : " ${dice_roll[$dice_value]} 
			flag=1
		fi
	;;
	2)
		if [ $((dice_roll[$dice_value])) -eq 0 ]
                then
                        dice_roll[$dice_value]=1
                else
                        ((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
                then
			echo "$dice_value occured ten times "
                        echo $dice_value ":" ${dice_roll[$dice_value]}
                        flag=1
                fi
       	;;
	3)
		if [ $((dice_roll[$dice_value])) -eq 0 ]
                then
                        dice_roll[$dice_value]=1
                else
                        ((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
                then
			echo "$dice_value occured ten times "
                        echo $dice_value ":" ${dice_roll[$dice_value]}
                        flag=1
                fi

	;;
	4)
		if [ $((dice_roll[$dice_value])) -eq 0 ]
                then
                        dice_roll[$dice_value]=1
                else
                        ((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
                then
			echo "$dice_value occured ten times "
                        echo $dice_value ":" ${dice_roll[$dice_value]}
                        flag=1
                fi
	;;
	5)
                if [ $((dice_roll[$dice_value])) -eq 0 ]
                then
                        dice_roll[$dice_value]=1
                else
                        ((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
                then
			echo "$dice_value occured ten times "
                        echo $dice_value ":" ${dice_roll[$dice_value]}
                        flag=1
                fi
	;;
	6)
        	if [ $((dice_roll[$dice_value])) -eq 0 ]
                then
                        dice_roll[$dice_value]=1
                else
                        ((dice_roll[$dice_value]++))
		fi

		if [  $((dice_roll[$dice_value])) -eq 10 ]
                then
			echo "$dice_value occured ten times "
                        echo $dice_value ":" ${dice_roll[$dice_value]}
                        flag=1
                fi
	;;
	*)	echo "Something went wrong"
	;;
	esac

done

echo "Results after random dice rolls and upto any single value is reached ten times: "
for key in ${!dice_roll[@]}
do
	echo $key " : " ${dice_roll[$key]}
done

max=0
for i in ${!dice_roll[@]}
do
	if [[ ${dice_roll[$i]} -gt $max ]]
	then
		max=${dice_roll[$i]}
		max1=$i
	fi
done

echo "Dice value: "$max1 " reached maximum times"

min=1000
for i in ${!dice_roll[@]}
do
        if [[ ${dice_roll[$i]} -lt $min ]]
        then
                min=${dice_roll[$i]}
                min1=$i
        fi
done

echo "Dice value: "$min1 " reached minimum times"

