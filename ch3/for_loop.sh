#!/bin/bash
# Filename: for_loop.sh
# Description: Basic for loop in bash

declare -a names=(Foo Bar Tom Jerry)
echo "Content of names array is:"
for name in ${names[@]}
do
	echo -n "$name "
done

echo
