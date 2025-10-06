#!/bin/bash

## Functions

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
  echo " $2  not installed"
  exit 1
else
  echo "$2 is successfully installed"
fi  }

dnf install $@ -y
validate $? "$@"

