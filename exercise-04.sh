#!/bin/bash

INPUT=/home/ec2-user/Order_Rev.txt
REVERSE=$(cat $INPUT | tac)

echo $REVERSE

# if [ $INPUT == $REVERSE ];
# then 
#     echo "Number is Palindrome"
# else    
#     echo "Number is Not Palindrome"  
# fi
