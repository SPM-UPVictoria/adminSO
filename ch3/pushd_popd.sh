#!/bin/bash
# Filename: pushd_popd.sh
# Description: Count number of files and directories

echo "Enter a directory path"
read path

if [ -d $path ]
then
	pushd $path > /dev/null
	echo "File count in $path directory = `ls | wc -l`"
	for f in `ls`
	do
		if [ -d $f ]
		then
			pushd $f > /dev/null
			echo "File count in sub-directory $f = `ls | wc -l`"
			popd > /dev/null
		fi
	done
	popd > /dev/null
else
	echo "$path is not a directory"
fi
