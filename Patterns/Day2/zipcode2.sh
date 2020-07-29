#!/bin/bash -x

echo "Enter a pincode: "
read pincode
pattern="^[1-9][@!]{1}[0-9]{4}$"
pattern1="^[1-9][0-9]{5}$"
pattern2="^[1-9]{1}[0-9]{2}[ ]*[0-9]{3}$"

if [[ $pincode =~ $pattern2 ]]
then
	echo yes
else
	echo no
fi

