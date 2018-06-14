# Filename: nicenumber.sh
# Description: Given a number, shows it in comma-separated form. Expects DD (decimal point delimiter) and TD (thousands delimiter) to be instantated.
# Instantated nicenum or, if a second arg is specified, the output is
# echoed to stdout

nicenumber()
{
	# Note that we assume that '.' is the decimal separator in
	# the INPIT value to this script. The decimal separator in 
	# the output value is '.' unless specified by the user
	# with the -d flag

	integer=$(echo $1 | cut -d. -f1)	#left of the decimal
	decimal=$(echo $1 | cut -d. -f2)	#right of the decimal

	# check if number has more than the integer part.
	if [ "$decimal" != "$1" ]
	then
		#there's a fractional part, so let's include it.
		result="${DD:= '.'}$decimal"
	fi

	thousands=$integer

	while [ $thousands -gt 999 ]
	do
		#Trhee least significant digits
		remainder=$(($thousands % 1000))

		# We need 'remainder' to be three digits. Do we need
		# to add zeros?
		while [ ${#remainder} -lt 3 ]
		do
			#force leading zeros
			remainder="0$remainder"
		done

		#bulds rigth to left
		result="${TD:=","}${remainder}${result}"
		# to left of remainder, if any
		thousands=$(($thousands / 1000))
	done

	nicenum="${thousands}${result}"
	if [ ! -z $2 ]
	then
		echo $nicenum
	fi
}

DD="."	# Decimal point delimiter, to separte whole and fractional
TD=","  # Thousands delimiter, to separte every three digits
