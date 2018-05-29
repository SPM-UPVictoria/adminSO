#!/bin/bash
# Filename: greater_integer.sh
# Description: Determining greater among two integers

echo "Enter two integers a and b"
read a b	# Reading input from stdin
echo "a = $a , b = $b"
# Finding greater integer
if test $a -gt $b
then
	echo "a is greater than b"
else
	echo "b is greater than a"
fi
