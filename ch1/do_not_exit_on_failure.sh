#!/bin/bash
#Filename: do_not_exit_on_failure.sh
#Description: Resume script after an error

echo "Before error"
cd /root/	#Will give error
echo "After error"
