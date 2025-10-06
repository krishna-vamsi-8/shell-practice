#!/bin/bash

 ##color are declared in variables
R="\e[31m"
G="\e[32m"
Y="\e[33m"


## This is a color customization 
 
 ## Use -e to enable the color option
 ## Use $N to not continue same color for next line ## In simple term to break

echo -e "Hi this is a superhero $R Red $N "

echo -e "Hi this is a superhero $G green $N "

echo -e "Hi this is a superhero $Y yellow $N "