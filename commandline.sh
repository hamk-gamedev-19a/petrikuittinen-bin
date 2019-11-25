#!/bin/sh

for argv in "$@"
do
    echo $argv
    wc $argv
done
