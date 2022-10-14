#!/usr/bin/env bash

INFILE=$1
REMOVE_HEAD=$2 # first to keep
REMOVE_TAIL=$3 # last to keep
OUTFILE=${INFILE}.cut.txt
TMP=${INFILE}.tmp.txt

### remove tail ####################################################
ROWS=`wc -l $INFILE | awk '{print $1}'`
NROWS_TAIL="$(($REMOVE_TAIL - $ROWS))" # negative value OK for head!
head -n $NROWS_TAIL $INFILE > $TMP

### remove head ####################################################
ROWS=`wc -l $TMP | awk '{print $1}'`
NROWS_HEAD="$(($REMOVE_HEAD - $ROWS))" # negative value OK for tail!
echo $NROWS_HEAD
# leave header
head -n 1 $INFILE > $OUTFILE
tail -n $NROWS_HEAD $TMP >> $OUTFILE
### remove TMP ####################################################
rm $TMP


