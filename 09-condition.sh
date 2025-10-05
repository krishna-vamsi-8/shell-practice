#!/bin/bash

## Condition

echo " To vote you age should be above 18"
echo "tell us your age"
read age
echo "show your proof of age"
read id



if [ $age -gt 18 ]; then
  echo "you can vote"
elif [ $id -eq 1 ]; then
  echo "you are eligible to vote"
else
  echo "you are welcome"
fi