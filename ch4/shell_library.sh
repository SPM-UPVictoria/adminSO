#!/bin/bash
# Filename: shell_library.sh
# Description: Demostrating creation of library in shell

# Declare global variables
declare is_regular_file
declare is_directory_file

#Function ot check file type
function file_type()
{
	is_regular_file=0
	is_directory_file=0
	if [ -f $1 ]
	then
		is_regular_file=1
	elif [ -d $1 ]
	then
		is_directory_file=1
	fi
}

# Printing regular file detail
function print_file_details()
{
	echo "Filename - $ 1"
	echo "Line count - `cat $1 | wc -l`"
	echo "Size - `du -h $1 | cut -f1`"
	echo "Owner - `ls -l $1 | tr -s ' ' | cut -d ' ' -f3`"
	echo "Last modified date - `ls -l $1 | tr -s ' ' | cut -d ' ' -f6,7`"
}

# Print directory details
function print_directory_details()
{
	echo "Directory name - $1"
	echo "File count in directory - `ls $1 | wc -l`"
	echo "Owner - `ls -ld $1 | tr -s ' ' | cut -d ' ' -f3`"
	echo "Last modified date - `ls -ld $1 | tr -d ' ' | cut -d ' ' -f6,7`"
}

