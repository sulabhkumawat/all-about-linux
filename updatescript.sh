#!/bin/bash

#nothing but next level scripting ..installing shit after checking the os distribution



release_file= /etc/os-release #this varible will check the os name or dist name

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syn
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then 
    #[the host is based on Debian or Ubuntu
    sudo apt update
    sudo apt dist-upgrade
fi


