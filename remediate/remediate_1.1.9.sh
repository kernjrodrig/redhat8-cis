#!/bin/sh
#1.1.9 Disable Automounting
#mod8
output1=$(yum remove autofs 2>&1)

output2=$(systemctl disable autofs.service 2>&1)
echo "$output1"
echo "$output2"