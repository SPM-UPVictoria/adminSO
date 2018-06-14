#!/bin/bash
. ./validAlphaNum.sh
echo -n "Enter input:"
read input

#Input validation
if ! validAlphaNum "$input"
then
	echo "Please enter only letters and numbers." >&2
	exit 1
else
	echo "Input is valid."
fi

exit 0
