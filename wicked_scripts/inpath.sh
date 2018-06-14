#!/bin/bash
# inpath--verifies that a specified program is either valid as in
# or can be found in the PATH directory list

in_path()
{
	# Give a coomand and the PATH, tries to find the command.
	# Return 0 if found and executable; 1 if not. Note that this
	# temporarily modifies the IFS (intternal field separator) but
	# respores it upon completion.

	cmd=$1	ourpath=$2	result=1
	oldIFS=$IFS
	IFS=":"

	for directory in $ourpath
	do
		echo "$directory"
		echo
		if [ -x "$directory/$cmd" ]
		then
			result=0	#if we're here, we found
		fi
	done

	IFS=$oldIFS
	return $result
}

checkForCmdInPath()
{
	var=$1

	if [ "$var" != "" ]
	then
		if [ "${var:0:1}" = "/" ]
		then
			if [ ! -x $var ]
			then
				return 1
			fi
		elif ! in_path $var "$PATH"
		then
			return 2
		fi
	fi
}

echo "$BASH_SOURCE"

if [ $# -ne 1 ]
then
	echo "Usage: $0 command" >&2
	exit 1
fi

checkForCmdInPath "$1"
case $? in
	0 ) echo "$1 found in PATH"	;;
	1 ) echo "$1 not found or not executable"	;;
	2 ) echo "$1 not found in path"	;;
esac

exit 0
