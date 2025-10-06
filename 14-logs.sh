#!/bin/bash

y="\e[33m"
r="\e[31m"
n="\e[0m"

## checking the user 
user=$(id -u)
if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi
## validating installation
validate(){ #dnf list installed $2
if [ $1 -ne 0 ]; then
   dnf list installed $2  
   exit 0
  echo -e " $2  $r Not installed $n"
  exit 1
else
  echo -e "$2 is  $y successfully installed $n"
fi  }
## installing Mysql
#dnf list installed $2
#if [ $? -ne 0 ]; then ## this validation is checking previoulsy installed
dnf install $@ -y
validate $? "$@"
#exit 0
#else
#echo -e " $y Already installed $n "
#fi

## installing Nginx
#dnf list installed ngnix -y
#if [ $? -ne 0 ]; then ## this validation is checking previoulsy installed
#dnf install nginx
#validate $? "nginx"
#else
#echo -e " $g Already installed $n "
#fi