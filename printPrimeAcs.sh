#!/bin/bash 

read -p "Enter lower limit: " lower

read -p "Enter upper limit " upper

echo $lower
echo $upper

echo "Prime numbers between $lower and $upper : "
for((i=$lower;i<=$upper;i++))
do
	flag=0
	for((j=2;j<=$lower/2;j++))
	do
		if [[ $(($i%$j)) -eq 0 ]]
		then
			flag=1
			break
		fi
	done

	if [[ $flag -eq 0 ]]
	then
		echo $i
	fi
done
