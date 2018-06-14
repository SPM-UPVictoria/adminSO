#!/bin/bash
# Filename: myprint.sh
# Description: Showing how to create ommand line options in shell script

function display_help()
{
  echo "Usage: myprint [OPTIONS] [arg ...]"
  echo "--help	Display help"
  echo "--version	Display version of script"
  echo  "--print 	Print arguments"
}

function display_version()
{
  echo "Version of shell script application is 0.1"
}

function myprint()
{
  echo "Arguments are: $*"
}

# Parsing command line arguments

if [ "$1" != "" ]
then
   case $1 in
        --help ) 
             display_help
             exit 1
            ;;
        --version )
             display_version
             exit 1
             ;;
        --print )
             shift
             myprint $@
             exit 1
            ;;
    *)
    display_help
    exit 1
   esac
fi
