#!/bin/bash 

read -p "Enter count of numbers to be stored in array: " n

echo "Generating random three digit numbers and storing in an array"

for (( i=0 ; i<$n ; i++ ))
do
	rand=$(($(($RANDOM%900))+99))
	Array_1[((i))]=$rand
done

#echo ${Array_1[@]}
printf '%s\n' "${Array_1[@]}"

max=1
second_max=1

for (( i=0 ; i<$n ; i++ ))
do
        if [ ${Array_1[i]} -gt $max ]
        then
                second_max=$max
                max=${Array_1[i]}

        elif [ ${Array_1[i]} -gt $second_max ] && [ ${Array_1[i]} -ne $max ]
        then
                second_max=${Array_1[i]}
        fi
done

echo "Second largest element: " $second_max


min=1000
second_min=1000

for (( i=0 ; i<$n ; i++ ))
do
	if [ ${Array_1[i]} -lt $min ]
	then
		second_min=$min
		min=${Array_1[i]}

	elif [ ${Array_1[i]} -lt $second_min ] && [ ${Array_1[i]} -ne $min ]
	then
		second_min=${Array_1[i]}
	fi
done

echo "Second smallest element: " $second_min
