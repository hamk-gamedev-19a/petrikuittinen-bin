#!/bin/sh

for arg in "$@"
do
    echo $arg
    wc $arg
done
