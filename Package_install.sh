#!/bin/bash

USER=$(id -u)

if  [ $USER -ne 0 ];
then    
    echo "User is not root"
    exit 1    
fi 
   
for i in $@
do  
    sudo yum list installed $i $>> /dev/null
    if [$? -ne 0];
    then    
        echo "$i is not installed " 
         echo "Installing  $i ...."
         sudo yum install $i -y &>> /dev/null
        echo "Installation of  $i is completed"
    else 
        echo "$i is already installed "
    fi    
done
