#!/bin/sh
tail -F -q /home/ops/configs/master/master1/qdata/logs/master1.log |  
while read -r line ;
    do 
        echo "$line" | nc -w 1 -u  40.115.118.108 5140 
    done