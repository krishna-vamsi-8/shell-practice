#!/bin/bash

## Condition

# -lt less than
# -ne not equal
# -eq equal
# -gt greater than

#number is variable
 
 number=$1 

if [ $number -gt 10 ]; then
  echo "value $number is greater than 10"
elif [ $number -lt 10 ]; then
  echo "value $number is less than 10"
else
  echo "value $number is equal to 10"
fi