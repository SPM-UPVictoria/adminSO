#!/bin/bash
# Filename: receive.sh
# Description: Script receiving message from sender from pipe file

pipe=/tmp/named_pipe

if [[ ! -p $pipe ]]
then
	echo "Reader is not running"
fi

while read line
do
	echo "Message from sender:"
	echo $line
done < $pipe
