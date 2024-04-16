#!/bin/bash

TEXT_FILE=/home/ec2-user/Exe_File/sample.txt
WORD_LIST=$(cat $TEXT_FILE | tr '[[:blank:]]' '\n' | sort | uniq -c | sort -rn)

echo $WORD_LIST



