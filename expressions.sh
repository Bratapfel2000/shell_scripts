#!/bin/bash
# test-file: Evaluate the status of a file
FILE=~/.bashrc
#FILE=""
if [ -e "$FILE" ]; then
if [ -f "$FILE" ]; then
echo "$FILE is a regular file."
fi
if [ -d "$FILE" ]; then
echo "$FILE is a directory."
fi
if [ -r "$FILE" ]; then
echo "$FILE is readable."
fi
if [ -w "$FILE" ]; then
echo "$FILE is writable."
fi
if [ -x "$FILE" ]; then
echo "$FILE is executable/searchable."
fi
else
echo "$FILE does not exist"
exit 1
#also working with return 1 instead of exit 1
#return 1
fi
exit
