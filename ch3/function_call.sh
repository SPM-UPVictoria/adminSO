#!/bin/bash
# Filename: function_call.sh
# Description: Shows how function is defined and called in bash

# Defining my_func function
my_func()
{
	echo "function my_func is called"
	return 3
}

my_func 	#Calling my_func function
return_value=$?
echo "Return value of function = $return_value"
