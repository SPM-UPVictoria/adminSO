. ./normdate.sh

# hacking the script
# accept date in the format MM/DD/YYY or MM-DD-YYYY
# if [ $# -eq 1 ]
# then
# 	set -- $(echo $1 | sed 's/[\/\-]/ /g')
# fi

# Input validation
if [ $# -ne 3 ]
then
	echo "Usage: $0 month day year" >&2
	echo "Formats are August 8 3 1962 and 8 3 1962" >&2
	exit 1
fi

if [ $3 -le 99 ]
then
	echo "$0: expected 4-digit year value." >&2
	exit 1
fi

# Is the month input format a number?
if [ -z $(echo $1 | sed 's/[[:digit:]]//g') ]
then
	monthNumToName $1
else
	# Normalize to first 3 letters, firtst upper - and then lower
	month="$(echo $1 | cut -c1 | tr '[:lower:]' '[:upper:]')"
	month="$month$(echo $1 | cut -c2-3 | tr '[:upper:]' '[:lower:]')"
fi

echo $month $2 $3

exit 0
