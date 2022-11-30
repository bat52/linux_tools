#!/bin/bash

# remember python package dtrx for unzippping!
# https://pypi.org/project/dtrx/
#
# other examples
# https://www.legendu.net/en/blog/compress-and-decompress-in-linux/

DIRPATH=$1
zip -r ${DIRPATH}.zip ${DIRPATH}
