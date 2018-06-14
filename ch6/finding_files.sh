#!/bin/bash
# Filename: finding_files.sh
# Description: Searching different types of file in system

echo -n "Number of C/C++ header files in system: "
find / -name "*.h" 2>/dev/null | wc -l

echo -n "Number of shell script files in system: "
find / -name "*.sh" 2>/dev/null | wc -l

echo "Files owned by user who is running the script ..."
echo -n "Number of files owned by user $USER: "
find / -user $USER 2>/dev/null | wc -l

echo -n "Number of executable files in system: "
find / -executable 2>/dev/null | wc -l
