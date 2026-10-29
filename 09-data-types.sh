#!/bin/bash

var1=10
var2=20
var3=siva

echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declar -i COUNT=5
COUNT=COUNT+1

echo "Count is: $COUNT"

FRUITS=("Apple","Banana","Pappaya")
echo "Print all fruits:${FRUITS[@]}"
echo "Print first fruit:${FRUITS[1]}"

NAME=shashiram

echo"My name is ${NAME}duddukuri"