# validAlphaNum--Ensures that input consis only of alpabetical
# and numeric characters

validAlphaNum()
{
	# Validate arg: returns 0 if all upper+lower+digit;
	# 1 otherwise

	#remove all unacceptable chars.
	validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
	echo "$1 vs $validchars"
	if [ "$validchars" = "$1" ]
	then
		return 0
	else
		return 1
	fi
}
