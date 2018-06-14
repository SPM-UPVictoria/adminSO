#!/bin/bash
# Filename: debug_entire_script.sh
# Description: Debugging entire shell script using -x

# Creating directories in /tmp
dir1=/tmp/$1
dir2=/tmp/$2
mkdir $dir1 $dir2
ls -ld $dir1
ls -ld $dir2
rmdir $dir1
rmdir $dir2
