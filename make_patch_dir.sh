#!/usr/bin/env bash
# https://unix.stackexchange.com/questions/162131/is-this-a-good-way-to-create-a-patch

# create patch for single file your command may look like
# diff -Naru file_original file_updated > file.patch

# create patch for whole directory:
# diff -crB dir_original dir_updated > dfile.patch

# After all to apply this patch one can run
# patch -p1 --dry-run < dfile.patch

ORIGIN=$1
MOD=$2
PATCH=$3

diff -crwB -x '*.log' -x '*.history' -x '*work.dev*' -x '*~' $ORIGIN $MOD > $PATCH
