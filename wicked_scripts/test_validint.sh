#!/bin/bash
#input validation

. ./validint.sh

if validint "$1" "$2" "$3"
then
	echo "Input is valid integer within your constraints."
fi
