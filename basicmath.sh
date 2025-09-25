#!/bin/bash

#many of + - * can be directly performe on terminal but you have to use expr 
expr 30 - 10
expr 10 / 3
expr 10 + 10
expr 2000 \* 3 
#idont know why he used this \ here but without this 
#it aint work

mynum=1999
mynum2=1992
expr $mynum + $mynum2
