#!/bin/bash
# Filename: command_line_arg2.sh
# Description: Creating directories in  /tmp

# check if at least 1 argument is passed in command line
if [ $# -lt 1 ]
then
	echo "Specify inimum one argument to create directory"
	exit 1
else
	pushd /tmp > /dev/null
	echo "Directory to be created are: $@"
	mkdir $@	# Accessing all command line arguments
fi
