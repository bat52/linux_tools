#!/usr/bin/env bash

INFILE=$1
OUTFILE=${INFILE}.awk.txt
awk '{print $4 " " $5 " " $14 " " $15}' $INFILE > $OUTFILE
head $OUTFILE
