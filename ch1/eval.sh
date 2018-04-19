#!/bin/bash
#Filename: eval.sh
#Description: Evaluating string as a command using eval

cmd="ls /usr"
echo "Output of command $cmd -"
eval $cmd #eval will treat content of cmd as shell command and execute it
cmd1="ls /usr | wc -l"
echo "Line count of /usr -"
eval $cmd1

expression="expr 2 + 4 \* 6"
echo "Value of $expression"
eval $expression
