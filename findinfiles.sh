#!/bin/bash
SEARCHPATH=$2
PATTERN=$1

function findinfiles() {
    SEARCHPATH=$2
    PATTERN=$1

    if [ -z "$PATTERN" ]
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

    # echo $PATTERN
    # echo $SEARCHPATH

    CMD="grep -rnw $SEARCHPATH -e $PATTERN"
    # grep -rnw "${SEARCHPATH}" -e "${PATTERN}"

    echo $CMD
    eval $CMD
}

findinfiles $PATTERN $SEARCHPATH
