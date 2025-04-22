#!/bin/bash


echo "Enter mark 1:"
read m1
echo "Enter mark 2:"
read m2
echo "Enter mark 3:"
read m3


total=$((m1 + m2 + m3))
avg=$(echo "scale=2; $total / 3" | bc)


echo "Average: $avg"


if (( $(echo "$avg >= 90" | bc -l) )); then
    grade="S"
elif (( $(echo "$avg >= 80" | bc -l) )); then
    grade="A"
elif (( $(echo "$avg >= 60" | bc -l) )); then
    grade="B"
elif (( $(echo "$avg >= 40" | bc -l) )); then
    grade="P"
else
    grade="F"
fi


echo "Grade: $grade"

