#!/bin/bash 

echo "Running a loop from 0 to 100 and store digits like 33,77,99 in an array!!"

declare -a div_eleven
counter=0

for (( i=0 ; i <=100 ; i++ ))
do
	rem=$(($i%11))
	if [ $i -ne 0 ] && [ $rem -eq 0 ]
	then
		div_eleven[((counter++))]=$i
	fi
done

echo "No of elements in the array: " ${#div_eleven[@]}
echo "Array with digits that are repeated: " ${div_eleven[@]}
