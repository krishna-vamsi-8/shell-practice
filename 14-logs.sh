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

checking(){ 
if [ $1 -ne 0 ]; then
 echo -e "Already  $G $2 will install $n"
 exit 1
else
 echo  -e " $r Already installed $2 $n"
fi }
dnf list installed $@
checking $? $@