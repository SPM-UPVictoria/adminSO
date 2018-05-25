#!/bin/bash
# Filename: nested_if.sh
# Description: Finding greatest integer among 3 by making use of nested if

echo "Enter three integer value"
read a b c
echo "a = $a , b = $b, c = $c"

if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "a is the greatest integer"
	else
		echo "c is the greatest integer"
	fi
else
	if [ $b -gt $c ]
	then
		echo "b is the greatest integer"
	else
		echo "c is the greatest integer"
	fi
fi
