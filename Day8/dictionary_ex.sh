#!/bin/bash 

declare -A sounds

sounds[dog]="bark"
sounds[cow]="mmm"
sounds[bird]="chirp"
sounds[wolf]="howl"

echo "Dog Sound: " ${sounds[dog]}
echo "All animal sounds: " ${sounds[@]}
echo "Animal: " ${!sounds[@]}
echo "Number of animals: " ${#sounds[@]}

