 #!/bin/bash

 # 0 --> success
 # 1 --> failure
 user=$(id -u)

if [ $user -ne 0 ]; then
  echo "you are not root user"
  exit 1
fi

dnf install ngnix -y

if [ $? -ne 0 ]; then
  echo " ngnix  not installed"
  exit 1
else
  echo "ngnix is successfully installed"
fi  
