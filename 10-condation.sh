#!/bin/bash

echo "Enter the marks::"
read -s MARKS

 if [ "$MARKS" -ge 90 ]; then
    echo "Grade: A"
elif [ "$MARKS" -ge 80 ]; then
    echo "Grade: B"
else
    echo "Grade: F"
fi