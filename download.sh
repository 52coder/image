#!/bin/bash

imgs=`./qrsctl listprefix 52coder ''`

i=0 
echo $imgs | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qrsctl get 52coder $line ./$line
    fi
    i=$(($i+1))
done
