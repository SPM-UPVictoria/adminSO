#!/bin/bash
# Filename: tar_creation.sh
# Description: Creation tar of all shell scripts in a directory

echo "Specify directory path"
read path

find $path -name "*.sh" | xargs tar cvf scripts.tar
