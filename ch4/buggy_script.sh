#!/bin/bash
# Filename: buggy_script.sh
# Description: Demostrating a buggy script

a=12 b=8
if [ a -gt $b ]
then
	echo " a is greater than b"
else
	echo "b is greater than a"
fi
