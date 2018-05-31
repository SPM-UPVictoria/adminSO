#!/bin/bash
# Filename: switch_case.sh
# Description: Using case to find count of directories and files in a # path

echo "Enter target path"
read path
file_count=0
dirs_count=0

for file in `ls -l $path | cut -d ' ' -f1`
do
	case "$file" in
		d*)
			dirs_count=`expr $dirs_count + 1`
			;;
		-*)
			files_count=`expr $files_count + 1`
			;;
		*)
	esac
done

echo "Directories count = $dirs_count"
echo "Regular file count = $files_count"
