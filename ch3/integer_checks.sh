#!/bin/bash
# Filename: integer_checks.sh
# Description: performing different arithmetic checks between integers

a=12 b=24 c=78 d=24
echo "a = $a , b = $b , c = $c, d = $d"

echo -n "Is a greater than b ? "
test $a -gt $b
echo $?

echo -n "Is b equal to d ? "
test $b -eq $d
echo $?

echo -n "Is c not equal to d ? "
test $c -ne $d
echo $?
