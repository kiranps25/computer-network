#!/bin/bash


echo "Enter a decimal number:"
read dec


original=$dec


binary=""


if [ "$dec" -eq 0 ]; then
    binary="0"
else
    while [ "$dec" -gt 0 ]; do
        rem=$(( dec % 2 ))
        binary="$rem$binary"  
        dec=$(( dec / 2 ))
    done
fi


echo "Binary of $original is: $binary"

