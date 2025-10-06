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

echo "dnf install $@ -y"
validate $? $@


dnf list installed $@ 
if [ $1 -ne 0 ]; then
 echo "Already  $G $2 Installed $n"
else
 echo " $r will install $2 $n"
fi