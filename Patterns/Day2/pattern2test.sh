#!/bin/bash -x

word=35697
pattern="[1-9]{1}[7-9]{2}"
pattern2="^[1-3]"
pattern3="^[1-5][5]*"

if [[ $word =~ $pattern3 ]]
then
	echo yes
else
	echo no
fi
