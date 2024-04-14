#!/bin/bash

# this is the comment, we need to develop a program that can do addition of 2 numbers

#read NUMBER1
#ead NUMBER2
# I need to run a command inside shell to add these 2 numbers
#SUM=$((NUMBER1+NUMBER2))

#echo "Addition of 2 numbers is: $SUM"

# echo "Please enter your username /n"
# read  -s username
# echo "entered username is $username"

# echo "Please enter your password /n"

# read  -s password
# echo "entered password is $password"

# File=$1
# LIST=$(ls -lrt | grep "$File" | awk -F " " '{print $NF}' | cat $File )

# echo "$LIST"

PACKAGE=("$1","$2","$3")
user=$(id -u)
Root=$(sudo -i)

if [ $user -gt 0]
then
    echo "User is not Root User"
    echo "Switching to Root User"
    $Root
    echo "Swiched to Root User....!"
# echo "List of packages : $PACKAGE"