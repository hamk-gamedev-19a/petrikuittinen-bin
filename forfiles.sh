#!/bin/sh
FILES=$HOME/www/*

for file in $FILES
do
    if [ -d "$file" ]
    then
	echo "$(basename $file) is a directory"
    elif [ -f "$file" ]
    then
	echo "$(basename $file) has lines words bytes"
	wc $file
    fi
done
