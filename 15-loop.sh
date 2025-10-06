#!/bin/bash
user=$(id -u)
y="\e[33m"
r="\e[31m"
n="\e[0m"
)
logfolder="/var/log/shellscript"  ## path to create directory
scriptname=$( echo $0 | cut -d "." -f1 ) ## $0 tells last executed script name
logfile="$logfolder/$scriptname.log"

mkdir -p $logfolder
echo "script start time $(date +%d-%m-%y)" | tee -a $logfile
## checking the user 
if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi
## validating installation
validate(){ 
if [ $1 -ne 0 ]; then
  echo -e " $2  $r Not installed $n" | tee -a $logfile
  exit 1
else
  echo -e "$2 is  $y successfully installed $n" | tee -a $logfile
fi  }

## $@ input at time of executing script
## package is consider as variable

for package in $@
do 
dnf list installed $package &>>$logfile
if [ $? -eq 0 ]; then
  dnf install $package &>>$logfile
  validate $? $package
else
  echo -e "$package already installed $y skipping... $n"  
fi
done