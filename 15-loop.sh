#!/bin/bash

y="\e[33m"
r="\e[31m"
n="\e[0m"

logfolder=var/log/shellscipt
scriptname=$(echo $0| cut -d "." -f1)
logfile=$logfolder/$scriptname.log


mkdir -p $logfolder

## checking the user 
user=$(id -u)
if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi
## validating installation
validate(){ 
if [ $1 -ne 0 ]; then
  echo -e " $2  $r Not installed $n" &>> $logfile
  exit 1
else
  echo -e "$2 is  $y successfully installed $n" &>> $logfile
fi  }

for package in $@
do 
dnf list installed $package &>> $logfile
if [ $? -eq 0 ]; then
  dnf install $package &>> $logfile
  validate $? $package
else
  echo -e "$package already installed $y skipping... $n"  
done