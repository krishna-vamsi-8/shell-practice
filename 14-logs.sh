#!/bin/bash

y="\e[33m"
r="\e[31m"
n="\e[0m"

user=$(id -u)
if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi
validate(){
if [ $1 -ne 0 ]; then
  echo -e " $2  $r Not installed $n"
  exit 1
else
  echo -e "$2 is  $y successfully installed $n"
fi  }
dnf list installed $2
if [ $1 -ne 0 ]; then
 dnf install $@
 validate $? $@
 exit 1
else
echo -e " $g already installed $n" 
fi