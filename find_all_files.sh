#!/bin/env bash

# useful to find all files matching a specific pattern (ie extension)

function find_all_files() {
    LPATH=$1
    PATTERN=$2

    find $LPATH -type f -name $PATTERN
}

find_all_files $1 $2
