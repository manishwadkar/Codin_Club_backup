#!/bin/bash -x

#Using Random to generate dice number between 1 to 6

dice_digit=$(( RANDOM % 6 + 1 ))

echo "Printing dice number which should not be zero: " $dice_digit 
