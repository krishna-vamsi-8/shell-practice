#!/bin/bash

## Special Variables

echo "enter the required Names: $@"  ##  $@  is used to enter data at time of execution of script


echo "enter the required Names: $*"  ##  $*  is used to enter data at time of execution of script

echo "show last executed script name: $0"

echo "current directory : $PWD"

echo "Who Am I: $USER"

echo "Home Directory: $HOME"

echo "Process ID of executed Script: $$" ## show PID of current executed Script 

sleep 10 &

echo "PID of last executed script: $!" ## show PID of last executed Script if it is in background 

