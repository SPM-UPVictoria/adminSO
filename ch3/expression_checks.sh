#!/bin/bash
# Filename: expression_checks.sh
# Description: Performing checks on and between expressions

a=5 b=56
str1="Hello" str2="Hello"

echo "a = $a , b = $b , str1 = $str1 , str2 = $str2"
echo -n "Is a and b are not equal, and str1 and str2 are equal? "
test ! $a -eq $b -a $str1 = $str2
echo $?

echo -n "Is a and b are equal, and str1 and str2 are equal? "
test $a -eq $b -a $str1 = $str2
echo $?

echo -n "Does /tmp is a directory and execute permission exists? "
test -d /tmp -a -x /tmp
echo $?

echo -n "Is /tmp file is a block file or write permissions exists? "
test -b /tmp -o -w /tmp
echo $?
