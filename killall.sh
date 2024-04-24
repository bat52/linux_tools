#!/usr/bin/env bash

PROCNAME=$1
USER=`whoami`

# retrieve list pf PID
PIDLIST=`ps -u ${USER} | grep ${PROCNAME}  |  awk '{print $1}'`
echo ${PIDLIST}

# kill all processes without mercy
for PID in $PIDLIST; do
    echo "PID: ${PID}"
    kill -9 $PID
done
