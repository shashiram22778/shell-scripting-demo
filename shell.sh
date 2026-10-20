#!/bin/bash
Name="RAM"
place="Bhadrachalam"
echo "$Name is from $place"
echo "hello this is my first shell script"
echo "$1 and $2 are shashi's best friends"
start=$(date +%s)
sleep 10
end=$(date +%s)
echo "script started at $start"
echo "script ended at $end"
echo "Total time consumed:$((start-end))"
