#!/bin/bash -x

read -p "Enter the value of a : : " a
read -p "Enter the value of b : : " b
read -p "Enter the valur of c : : " c

result=$(( $c + $a / $b ))
echo $result
