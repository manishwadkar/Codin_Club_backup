#!/bin/bash -x

echo "Enter the word ending with thing"
read word

if [[ $word == +(some|any)thing ]]
then
	echo yes
else
	echo no
fi
