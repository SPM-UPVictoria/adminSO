#!/bin/bash
#Filename: exit_on_failure.sh
#Description: Exit script after an error

set -e
echo "Before error"
cd /root/	#Will give error
echo "After error"
