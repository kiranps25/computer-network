#!/usr/bin/bash
echo -n "enter a number: "
read -r n
arm=0
temp=$n


num_digits=${#n}

while [ "$n" -ne 0 ]; do
    r=$((n % 10))
    arm=$((arm + r ** num_digits))  
    n=$((n / 10))
done

echo $arm

if [ $arm -eq "$temp" ]; then
    echo "armstrong"
else
    echo "not armstrong"
fi
