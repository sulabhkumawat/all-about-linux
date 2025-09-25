#!/bin/bash
echo "what is your favb linux distribution"
echo "1 -- Arch"
echo "2 -- centOS"
echo "3 --Debian"
echo "4 -- Mint"
echo "5 -- Ubuntu"
echo "6 -- somethingelse"

read distro;
case $distro in
    1) echo " Arch i sa rolling release."
    2) echo "CentOS is popular on servers."
    3) echo "Debian is a community distribution."
    4) echo "mind is popular on desktop and laptops."
    5) echo "Ubuntu is popular on both servers and computers"
    6) echo " there are many distribution out there .."
    *) echo "you didnt enter an appropriate choice."

esac
