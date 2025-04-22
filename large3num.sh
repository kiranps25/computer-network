#!/usr/bin/bash
echo "enter 1st number"
read m
read -p "enter 2nd number: " n
read -p "enter 3rd number: " u
if [ $m -gt $n ] && [ $m -gt $u ];
then echo "largest number is $m"
elif [ $n -gt $m ] && [ $n -gt $u ];
then echo "largest number is: $n"
else
echo "largest number is: $u"
fi
