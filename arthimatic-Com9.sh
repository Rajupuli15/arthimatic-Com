#!/bin/bash -x

read -p "Enter the vlaue of a :: " a
read -p "Enter the vlaue of b :: " b
read -p "Enter the vlaue of c :: " c

declare -A results
results[one]=$(( $a + $b *$c ))
results[two]=$(( $a * $b + $c ))
results[three]=$(( $c + $a / $b ))
results[four]=$(( $a%$b *$c ))

Array
i=0
a[i++]=${result[one]}
a[i++]=${result[two]}
a[i++]=${result[three]}
a[i++]=${result[four]}

echo "output" ${[@]}
temp=0
for (( i=o; i<4; i++ ))
do
		for (( j=0; j<4-i-1; j++ ))
		do
		if [[ ${[j]} -gt ${a[$((j+1))]} ]]
		then
		temp=${a[j]}
		a[j]=${a[$((j+1))]}
		a[j+1]=$temp
		fi
		done
done

echo "Ascending Order" ${a[@]}
