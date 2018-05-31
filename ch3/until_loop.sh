#!/bin/bash
# Filename: until_loop.sh
# Description: Using until loop to read user input

echo "Enter application name"
read app

until pidof $app
do
	sleep 5
done
echo "$app is running now with pid 'pidof $app'"
