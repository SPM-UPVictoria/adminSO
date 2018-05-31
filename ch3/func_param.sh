#!/bin/bash
# Filename: func_param.sh
# Description: How parameters to function is passed and accessed in bash

upper_case()
{
	if [ $# -eq 1 ]
	then
		echo $1 | tr '[a-z]' '[A-Z]'
	fi
}

upper_case hello
upper_case "Linux shell scripting"
