#!/bin/bash
# Filename: range_in_for.sh
# Description: Specifying range of numbers to for loop

echo "Numbers between 5 to 10 -"
for num in {5..10}
do
	echo -n "$num "
done

echo

echo "Odd numbers between 1 to 10 -"
for num in {1..10..2}
do
	echo -n "$num "
done
echo
