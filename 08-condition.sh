#!/bin/bash


### Conditions

echo "tell the number"
read number

if [ $((number % 2)) -eq 1 ];
then
 echo "Given $number is not even"
else
 echo "Given $number is odd"
fi