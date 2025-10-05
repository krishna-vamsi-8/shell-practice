#!/bin/bash

## Special Variables

echo "enter the required Names: $@"  ##  $@  is used to enter data at time of execution of script


echo "enter the required Names: $*"  ##  $*  is used to enter data at time of execution of script

echo "show last executed script name: $0" ## last executed script name

echo "current directory : $PWD" ## present working directory

echo "Who Am I: $USER" ## user name 

echo "Home Directory: $HOME" ## home directory

echo "Process ID of executed Script: $$" ## show PID of current executed Script 

sleep 10 &

echo "PID of last executed script: $!" ## show PID of last executed Script if it is in background 

