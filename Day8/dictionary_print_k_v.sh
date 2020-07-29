#!/bin/bash 

declare -A sample

for (( i=1 ; i<=4 ; i++ ))
do
	read -p "Enter key and value: " key value
	sample[$key]=$value

done

for i in ${!sample[@]}
do
	echo $i ${sample[$i]}
done

echo "Dictionary: " ${sample[@]}
echo "Key: "${!sample[@]}

echo  ${!sample[@]}"  "${sample[@]}

#for key in ${!myDict[@]}
#do
#   echo $key " : " ${myDict[$key]}
#done
