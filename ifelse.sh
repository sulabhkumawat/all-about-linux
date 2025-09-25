#!/bin/bash
mynum=200
if [ $mynum -eq 200 ]
then
     echo "the condition is true."
else 
    echo "the varible is not storing the value of 200"
fi 
#this fi is used here to end this if else condition


#lets make on for file check ..is file exists or not

if [ -f ~/myfile ]
then
    echo "the file exists."
else
    echo "the file does not exists."
fi

#now lets say check wheather command exists or nor ...if nor then we be downloading that module

command=/usr/bin/htop
if [ -f $command ]
then
    echo "command exists, lets run it"
else
    echo "the $command is not available ,installing it..."

    sudo apt update && sudo apt intall -y htop
fi

$command

#you can also do  directly use command name like rather using full path to that command 


command=htop
if command -v $command
then
    echo "command exists, lets run it"
else
    echo "the $command is not available ,installing it..."

    sudo apt update && sudo apt intall -y htop
fi

$command

