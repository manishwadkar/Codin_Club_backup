#!/bin/bash -x

first_dice_number=$(( RANDOM % 6 + 1 ))
second_dice_number=$(( RANDOM % 6 + 1))

sum=$(( $first_dice_number + $second_dice_number ))

echo "Sum of two random dice numbers: " $sum
