#!/bin/bash
# Filename: send.sh
# Description: Script which sends message over pipe

pipe=/tmp/named_pipe

if [[ ! -p $pipe ]]
then
	mkfifo $pipe
fi

echo "Hello message from sender" > $pipe
