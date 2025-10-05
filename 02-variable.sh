#!/bin/bash

## Variables

#Arguments without variables
 
 echo "suresh : hi dinesh"
 echo "dinesh : hello suresh, what are learning"
 echo "suresh : i am learning shell, what about you"
 echo "dinesh :  i am also learning shell" 



#Arguments with variables

person1="suresh" #add names into variable 
person2="dinesh" #add names into variable 
course="shell"

# Instead of calling of name in argument call variables
 echo "$person1 : hi $person2"
 echo "$person2: hello $person1, what are learning"
 echo "$person1 : i am learning $course, what about you"
 echo "$person2 :  i am also learning $course" 
