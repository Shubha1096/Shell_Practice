#!/bin/bash

TEXT_FILE=/home/ec2-user/Exe_File/sample.txt
FINAL_FILE=$(sed -i 's/NOK/Perfect/g' $TEXT_FILE)
cat TEXT_FILE





# sed -i 's/old-text/new-text/g' input.txt