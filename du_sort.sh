#!/usr/bin/env bash
# get disk usage and list 10 top entries
# https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/
du -h --max-depth=1 | sort -rh | head -20
