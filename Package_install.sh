#!/bin/bash

USER=$(id -u)

if  [ $USER -ne 0 ];
then    
    echo "User is not root"
    sudo -i     
fi 
   
for i in $@
do  
    yum list installed $i $>> /dev/null
    if [$i -ne 0];
    then    
        echo "$i is not installed " 
         echo "Installing  $i ...."
         yum install $i -y &>> /dev/null
        echo "Installation of  $i is completed"
    else 
        echo "$i is already installed "
    fi    
done
