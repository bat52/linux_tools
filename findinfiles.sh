#!/bin/bash
SEARCHPATH=$2
PATTERN=$1

if [ -z "$PATTTERN" ] 
then
    echo "Usage: findinfiles.sh PATTERN [PATH]"
    echo "default PATH is ./"
fi 

if [ -z "$SEARCHPATH" ]
then
    echo "SEARCHPATH was not specified!"
    echo "default PATH is ./"
    SEARCHPATH="./"
fi 

grep -rnw "${SEARCHPATH}" -e "${PATTERN}"
