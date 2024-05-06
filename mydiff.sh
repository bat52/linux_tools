#!/usr/bin/env bash
# diff -y --suppress-common-lines $1 $2

# side-by-side| line # | only differing lines
diff -b -y $1 $2 | cat -n | grep "[|><]"
