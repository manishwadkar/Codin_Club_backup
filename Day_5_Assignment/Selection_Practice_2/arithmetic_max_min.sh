#!/bin/bash -x

read -p "Enter first number: " first

read -p "Enter second number " second

read -p "Enter third number " third

res1=$(( $first + $second * $third ))

res2=$(( $first % $second + $third ))

res3=$(( $third + $first / $second ))

res4=$(( $first * $second + $third ))

if [ $res1 -gt $res2 ] 
then
	if [ $res1 -gt $res3 ]
 	then
   		if [ $res1 -gt $res4 ]
		then
     			echo "$res1 is the Greatest Number"
   		else
     			echo "$res4 is the Greatest Number"
   		fi
  	elif [ $res3 -gt $res4 ] 
	then
     		echo "$res3 is the Greatest Number"
	else
 		echo "$res4 is the Greatest Number"
  	fi
	elif [ $res2 -gt $res3 ]
	then
  		if [ $res2 -gt $res4 ] 
		then
     			echo "$res2 is the Greatest Number"
  		else
     			echo "$res4 is the Greatest Number"
  		fi
  	elif [ $res3 -gt $res4 ] 
	then
     		echo "$res3 is the Greatest Number"
  	else
     		echo "$res4 is the Greatest Number"
fi

if [ $res1 -lt $res2 ]
then
        if [ $res1 -lt $res3 ]
        then
                if [ $res1 -lt $res4 ]
                then
                        echo "$res1 is the Smallest Number"
                else
                        echo "$res4 is the Smallest Number"
                fi
        elif [ $res3 -lt $res4 ]
        then
                echo "$res3 is the Smallest Number"
        else
                echo "$res4 is the Smallest Number"
        fi
        elif [ $res2 -lt $res3 ]
        then
                if [ $res2 -lt $res4 ]
                then
                        echo "$res2 is the Smallest Number"
                else
                        echo "$res4 is the Greatest Number"
                fi
        elif [ $res3 -lt $res4 ]
        then
                echo "$res3 is the Smallest Number"
        else
                echo "$res4 is the Smallest Number"
fi
