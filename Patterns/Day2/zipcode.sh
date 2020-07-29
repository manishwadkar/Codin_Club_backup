#!/bin/bash -x

pincode=483269
pattern="^[1-9][@!]{1}[0-9]{4}$"
pattern1="^[1-9][0-9]{5}$"

if [[ $pincode =~ $pattern1 ]]
then
	echo yes
else
	echo no
fi
