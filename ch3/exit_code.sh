#!/bin/bash
# Filename: exit_code.sh
# Description: Exit code of script

cmd_foo # running command not installed in system
echo $?

cd /root #permission problem
echo $?

echo "Hello World!" # Successful echo print
echo $?

exit 200 # returning script's exit code as 200
