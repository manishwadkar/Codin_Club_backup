#!/bin/bash -x

#find if day and month is in between 20/03 and 20/06
#Here i considered valid dates from 21/03 till 19/06 i.e excluded 20th march and 20th june

read -p "Enter day(should be between 1 to 31): " d
read -p "Enter month(should be between 1 to 12): " m

echo $d "/" $m

if [ $m -lt 3 ] || [ $m -gt 6 ]
then
	echo "false"
elif [ $m -eq 3 ] && [ $d -lt 21 ]
then
	echo "false"
elif [ $m -eq 6 ] && [ $d -gt 19 ]
then
	echo "false"
else
	echo "true"
fi
