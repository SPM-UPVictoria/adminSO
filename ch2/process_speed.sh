#!/bin/bash
#filename: process_speed.sh
#Description: Demostrating how to find processor speed of running system

grep -R "model name" /proc/cpuinfo | sort -u > /tmp/tmp1.txt
tr -d ' ' < /tmp/tmp1.txt > /tmp/tmp2.txt
cut -d '@' -f2 /tmp/tmp2.txt
