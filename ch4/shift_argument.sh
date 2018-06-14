#!/bin/bash
# Filename: shift_argument.sh
# Description: Usage of shift shell builtin

echo "Length of command line argument = $#"
echo "Arguments are:"
echo "\$1 = $1, \$2 = $2, \$3 = $3, \$4 = $4, \$5 = $5, \$6 = $6"
echo "Shifting arguments by 3"
shift 3
echo "Length of command line argument = $#"
echo "Arguments after 3 shifts are"
echo "\$1 = $1, \$2 = $2, \$3 = $3, \$4 = $4, \$5 = $5, \$6 = $6"
