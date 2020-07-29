#!/bin/bash -x

i=0;

for (( i=0; i<=4; i++ ))
do
	Array1[((i))]=$i
done

echo ${Array1[@]}
echo $i

