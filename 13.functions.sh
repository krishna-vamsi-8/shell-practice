#!/bin/bash

## Functions

y="\e[33m"
r="\e[31m"

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
  echo " $2  $r Not installed $N "
  exit 1
else
  echo "$2 is  $y successfully installed $N "
fi  }

dnf install $@ -y
validate $? $@

