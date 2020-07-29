#/bin/bash -x

read -p "Enter a number (range to print prime numbers upto given number): " num

flag=0

echo "Range of prime numbers upto $num: "

for (( i=2 ; i<=num ; i++ ))
do
	flag=0
	for (( j=2 ; j<i ; j++))
	do
		if [ $(($i % $j)) -eq 0 ]
		then
			flag=1
		fi
	done

	if [ $flag -eq 0 ]
	then
		echo $i
	fi
done

