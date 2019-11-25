#!/bin/sh
echo How old are you?

read age

if [ "$age" -lt 0 ]
then
    echo "Nobody can be so young!"
elif [ "$age" -eq 0 ]
then
    echo "You are an infant. Did daddy type this for you?"
elif [ "$age" -lt 18 ]
then
    echo "You are still a child."
else
    echo "You are an adult."
fi
     
