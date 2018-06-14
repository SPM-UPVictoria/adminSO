#!/bin/bash
# Filename: shell_library_usage.sh
# Description: Demostrating shell library usage in shell script

# Print details of all file/directories in a directory
echo "Enter path of directory"
read dir

# Loading shell_library.sh module
. $PWD/shell_library.sh

# Check if entered pathname is a directory
# if directory, the print files/directory details inside it
file_type $dir
if [ $is_directory_file -eq 1 ]
then
	pushd $dir > /dev/null 	# save current directory and cd to $dir
	for file in `ls`
	do
		file_type $file
		if [ $is_directory_file -eq 1 ]
		then
			print_directory_details $file
			echo
		elif [ $is_regular_file -eq 1 ]
		then
			print_file_details $file
			echo
		fi
	done
fi
