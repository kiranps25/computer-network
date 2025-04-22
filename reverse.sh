#!/bin/bash


echo "Enter a number:"
read num


reverse=$(echo "$num" | rev)


echo "Reversed number: $reverse"

