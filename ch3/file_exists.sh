#!/bin/bash
# Filename: file_exists.sh
# Description: Print message if file exists

if [ -e /bin/ls ]
then
	echo "File /bin/ls exists"
fi
