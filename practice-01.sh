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


LIST=$(ls -lrt | grep README.md | awk -F "" '{print $NF}')

echo "$LIST"