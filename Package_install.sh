#!/bin/bash

USER=$(id -u)

if  [ $USER -gt 0]
then    
    echo "User is not root"
    exit 1
fi 
   

for i in $@
do  
    Echo "Installing  $i ...."
    yum install $i -y &>> /dev/null
    Echo "Installation of  $i is completed"
done
