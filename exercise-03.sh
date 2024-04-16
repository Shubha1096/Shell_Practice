#!/bin/bash

# step 1:- Take user input in a string
# step 2:- Findthe length of given string using length function
# step 3:- Set i = length-1 and run loop till i <= 0
# step 4:- echo the $i
# step 5:- repeat step 3 and 4 till i==0
# step 6:- end

INPUT=$1
REVERSE=$(echo $INPUT | rev)

if [ $INPUT -eq $REVERSE ];
then 
    echo "Number is Palindrome"
else    
    echo "Number is Not Palindrome"  
fi
