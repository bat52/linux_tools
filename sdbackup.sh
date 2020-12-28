#!/bin/bash

echo "USAGE:"
echo "$0 image_file_name.img"

IMG=$1
if [ -z "$IMG" ]
then
	IMG="image.img"	
    echo "default image name is $IMG"
fi 

# select drive from available, using fuzzy list
DEV=`ls /dev/sd* | fzf`

echo "Selected Drive to backup"
echo $DEV

dd bs=4M if=/dev/sdc of=$IMG
