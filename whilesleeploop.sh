#!/bin/sh

i=1 # careful with spaces e.g. i = 1 won't work
# loop from 1...10
echo "counting"
while [ "$i" -le 10 ]
do
    echo "$i"
    i=`expr $i + 1`
    sleep 1
done
