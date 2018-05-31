#!/bin/bash
# Filename: select.sh
# Description: Giving user choice using select to choose

select file in `ls /`
do
	if [ -d "/"$file ]
	then
		echo "$file is a directory"
	else
		echo "$file is not a directory"
	fi
done
