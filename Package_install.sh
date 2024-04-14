#!/bin/bash

USER=$(id -u)

if  [ $USER -ne 0];
then    
    echo "User is not root"
    exit 1
fi 
   

for i in $@
do  
    echo "Installing  $i ...."
    sudo yum install $i -y &>> /dev/null
    Echo "Installation of  $i is completed"
done
