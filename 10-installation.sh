 #!/bin/bash

 # 0 --> success
 # 1 --> failure
 user=$(id -u)

if [ $user -eq 0 ]; then
  echo "you are a root user"
  exit 1
fi

dnf install ngnix -y

if [ $? -eq 0 ]; then
  echo " ngnix installed"
  exit 1
fi  
