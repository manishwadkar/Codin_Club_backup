#! /bin/bash

read -p "Enter the name of the folder: " folder_name

if [ -d $folder_name ]
then
	echo $folder_name already exists
else
	mkdir $folder_name;
	echo $folder_name created sucessfully
fi
