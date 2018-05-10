#!/bin/bash
#Filename: arithmetic.sh
#Description: Arithmetic evaluation

num1=10 num2=5
echo "Numbers are num1 = $num1 and num2 = $num2"
echo "Addition = `expr $num1 + $num2`"
echo "Substration = `expr $num1 - $num2`"
echo "Multiplication = `expr $num1 \* $num2`"
echo "Division = `expr $num1 / $num2`"
let "exponent = $num1 ** $num2"
echo "Exponentiation = $exponent"
echo "Modulo = `expr $num1 % $num2`"
let "num1 += $num2"
echo "New num1 = $num1"
echo "num1 -= $num1"
echo "New num2 = $num2"
