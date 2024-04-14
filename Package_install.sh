#!/bin/bash

USER=$(id -u)


VALIDATE (){

if [ $1 -ne 0 ];
then   
     echo "$2 is installed sucessfully" 
else
    echo "$2 is not installed sucessfully"   
fi     
}

if  [ $USER -ne 0 ];
then    
    echo "User is not root"
    exit 1    
fi 
   
for i in $@
do  
    yum list installed $i $>> /dev/null
    if [ $? -ne 0 ];
    then    
        echo "$i is not installed " 
        echo "Installing  $i ...."
        yum install $i -y &>> /dev/null
        VALIDATE "$?" "$i"
    else 
        echo "$i is already installed "
    fi    
done
