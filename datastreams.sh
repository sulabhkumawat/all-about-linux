#!/bin/bash

#redirect standard output error into file or dir

find /etc -type f 2> /dev/null 
#this command with 2 directing error 


find /etc -type f 1> /dev/null
#this commad with 1 or nothing directing standard output


find /etc -type f 1> find_results.txt  2>find_errors.txt
#now this is directing both result and error in specific files


#now where it comes handy, well 



release_file= /etc/os-release #this varible will check the os name or dist name
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log


check_exit_status() {
  if [ $? -ne 0 ]
  then
      echo "an error occurred"
  fi
}

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syn 1>>$logfile 2>>errorlog

    check_exit_status()
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then 
    #[the host is based on Debian or Ubuntu
    sudo apt update
    sudo apt dist-upgrade -y 1>>$logfile 2>>errorlog
    check_exit_status()
fi



