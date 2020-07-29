#!/bin/bash 

read -p "Enter a number greater than 1 to calculate its prime factors: " num

count=0
flag=0
for (( i=2 ; i<$num ; i++ ))
do
	if [ $(( $num % $i )) -eq 0 ]
	then
      		fact=$i

  	for (( j=2 ; j<= $(($fact/2)) ; j++ ))
	do
		flag=0
      		if [ $(( $fact % $j )) -eq 0 ]
		then
      			flag=1
      			break
      		fi
      		#j=$(( $j + 1 ))
	done

  		if [ $flag -eq 0 ]
		then
  			echo "$fact "
  			count=1
  		fi
  	fi
  	#i=$(( $i + 1 ))
done

if [ $count -eq 0 ]
then
	echo "No prime factors for $num except $num"
fi
