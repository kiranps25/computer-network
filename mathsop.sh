#!/usr/bin/bash
read -p "enter 1st number: " a
read -p "enter 2nd number" b
add=$( expr $a + $b )
echo "additional of $a and $b = $add"
sub=$( expr $a - $b )
echo "subtraction of $a and $b = $sub"
mull=$( expr $a \* $b )
echo "multiplication of $a and $b = $mull"
div=$( expr $a / $b )
echo "divition of $a and $b = $div"
