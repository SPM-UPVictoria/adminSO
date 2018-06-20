#!/bin/bash

. ./validfloat.sh

if validfloat $1
then
	echo "$1 is a valid floating-point value."
fi

exit 0
