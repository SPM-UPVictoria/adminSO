#!/bin/bash
# Filename: elif_usage.sh
# Description: Display content if user input is a regular file or directory

echo "Enter a valid file or directory path"
read path
echo "Entered path is $path"

if [ -f $path ]
then
	echo "File is a regular file and its content is: "
	cat $path
elif [ -d $path ]
then
	echo "File is a directory and its content is: "
	ls $path
else
	echo "Not a valid regular file or directory"
fi
