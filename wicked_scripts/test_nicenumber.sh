#!/bin/bash

. ./nicenumber.sh

while getopts "d:t:" opt;
do
	case $opt in
		d ) DD="$OPTARG" ;;
		t ) TD="$OPTARG" ;;
	esac
done
shift $(($OPTIND - 1))

# input validation
if [ $# -eq 0 ]
then
	echo "Usage: $(basename $0) [-d c] [-t c] number"
	echo "  -d specifies the decimal point delimiter"
	echo "  -t specifies the thousands delimiter"
	exit 0
fi

nicenumber $1 1	#second arg forces nicenumber to 'echo' output

exit 0
