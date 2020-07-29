#!/bin/bash

read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c

declare -A comp_d

comp_d[a+b*c]=$(($a+$b*$c))
comp_d[a*b+c]=$(($a*$b+$c))
comp_d[c+a/b]=$(($c+$a/$b))
comp_d[a%b+c]=$(($a%$b+$c))

echo "Dictionary: "
for key in ${!comp_d[@]}
do
        echo "$key = ${comp_d[$key]}"
done

echo "Array: "
i=0
for key in ${!comp_d[@]}
do
	arr[$i]=${comp_d[$key]}
	i=$(($i+1))
done

echo ${arr[@]}
n=${#arr[@]}
echo $n

for((i=0;i<$n;i++))
do
	for((j=$(($i+1));j<$n;j++))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "Descending Array : "${arr[@]}

for((i=0;i<$n;i++))
do
        for((j=$(($i+1));j<$n;j++))
        do
                if [ ${arr[$i]} -gt ${arr[$j]} ]
                then
                        temp=${arr[$j]}
                        arr[$j]=${arr[$i]}
                        arr[$i]=$temp
                fi
        done
done
echo "Ascending Array : "${arr[@]}
