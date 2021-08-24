#!/bin/bash -x

read -p "Enter the vlaue of a :: " a
read -p "Enter the vlaue of b :: " b
read -p "Enter the vlaue of c :: " c

declare -A results
results[one]=$(( $a + $b *$c ))
results[two]=$(( $a * $b + $c ))
results[three]=$(( $c + $a / $b ))
results[four]=$(( $a%$b *$c ))

