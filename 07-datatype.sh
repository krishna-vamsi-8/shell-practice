#!/bin/bash

## Data Types
## no data type is shell scripting
## shell consider all values as string
## Can use $variable_names or ${variable_name} to declare variable

## Array
# count based index values
# index values start from 0 

friends=("anith" "dinesh" "avinash" "nara" "sharu")

echo "tell your friends name: ${friends}"  ## It prints starting index

echo "tell your friends name: ${friends[@]}"  ## It prints all values 

echo "tell your friends name: ${friends[2]}"  ## It prints based on given index value