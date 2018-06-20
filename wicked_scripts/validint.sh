#!/bin/bash
# validint -- Validates integer input, allowing negative integers too

validint()
{
	# Validate first field and test that value against min value
	# $2 and/or max value $3 of they are supplied. If the value
	# isn¿t withing range or it's not composed of just digits.
	# fail.

	number="$1";	min="$2";	max="$3"

	if [ -z $number ]
	then
		echo "You didn't enter enything. Please enter a number." >&2
		return 1
	fi

	# Is the first character a '-' sign?
	if [ "${number%${number#?}}" = "-" ]
	then
		testvalue="${number#?}"	# grab all but the first character to test.
	else
		testvalue="$number"
	fi

	# create a version of the number that has no digits for testing.
	nodigits="$(echo $testvalue | sed 's/[[:digit:]]//g')"

	#check for non digit characters.
	if [ ! -z $nodigits ]
	then
		echo "Invalid number format! Only digit, no commas, scpaces, etc." >&2
		return 1
	fi

	if [ ! -z $min ]
	then
		# Is the input less than the minimum value?
		if [ "$number" -lt "$min" ]
		then
			echo "Enter value is too small: smallest acceptable value is $min." >&2
			return 1
		fi
	fi

	if [ ! -z $max ]
	then
		# Is the input greater than the maximum value?
		if [ "$number" -gt "$max" ]
		then
			echo "your value is too big: largest acceptable value is $max." >&2
			return 1
		fi
	fi

	return 0
}
