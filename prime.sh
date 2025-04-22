#!/bin/bash


echo "Enter start of range:"
read start
echo "Enter end of range:"
read end


is_prime() {
    n=$1
    if (( n < 2 )); then
        return 1
    fi
    for (( i=2; i*i<=n; i++ )); do
        if (( n % i == 0 )); then
            return 1
        fi
    done
    return 0
}


count=0
for (( num=start; num<=end; num++ )); do
    if is_prime $num; then
        ((count++))
    fi
done


echo "Number of prime numbers between $start and $end: $count"

