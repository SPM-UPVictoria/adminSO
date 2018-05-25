#!/bin/bash
# Filename: string_checks.sh
# Description: Performing checks on and between strings

str1="Hello" str2="Hell" str3="" str4="Hello"
echo "str1 = $str1 , str2 = $str2 , str3 = $str3 , str4 = $str4"

echo -n "Is str3 emtpy ? "
test -z $str3
echo $?

echo -n "Is str2 not empty? "
test -n $str2
echo $?

echo -n "Are str1 and str4 equal? "
test $str1 = $str4
echo $?

echo -n "Are str1 and str2 different? "
test $str1 != $str2
echo $?
