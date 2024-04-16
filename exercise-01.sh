#!/bin/bash

TEXT_FILE=/home/ec2-user/Exe_File/sample.txt
WORD_LIST=$(cat $TEXT_FILE | tr ' ' '\n' | sort | uniq -c | awk '{print $2"@"$1}')

echo $WORD_LIST

