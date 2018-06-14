#!/bin/bash
# Filename: command_line_arg.sh
# Description: Accessing command line parameters in shell script

# Printing first, second, and third command line parameters
echo "First command line parameter = $1"
echo "Second command line parameter = $2"
echo "third command line parameter = $3"

echo $@
