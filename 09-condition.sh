#!/bin/bash

## Condition

# -lt less than
# -ne not equal
# -eq equal
# -gt greater than

echo " To vote you age should be above 18"
echo "tell us your age"
read age

if [ $age -gt 18 ]; then
  echo "you can vote"
elif [ $age -lt 18 ]; then
  echo "you are not eligible to vote"
else
  echo "you are welcome"
fi