#!/bin/bash

## Functions

y="\e[33m"
r="\e[31m"
N="\e[0m"

 user=$(id -u)

 ## In this process checking user root or not

if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi

## In this process checking previous exist is success or failure 
## 0 --> success
## 1 --> failure

validate(){
if [ $1 -ne 0 ]; then
  echo -e " $2  $r Not installed $N "
  exit 1
else
  echo -e "$2 is  $y successfully installed $N "
fi  }

## Can use $@ to get input at time of execution 
dnf install $@ -y
validate $? $@

