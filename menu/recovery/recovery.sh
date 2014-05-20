#!/bin/bash
# MenuInstaler for Falcon
# Autor: Klozz Jesús
# date: may 20 2014
## V1.0
export installer=$TOPDIR/menu
clear 
echo "             ####################################################"
echo "             ####             AutoInstall Falcon             ####"
echo "             ####         Autor: Klozz Jesus AKA             ####"
echo "             ####              TeamMEX in XDA           V1.0 ####"
echo "             ####################################################"

echo
echo "Select 1 option from the menu :)"
echo
echo "1.- CWM Recovery 6.0.4.7"
echo "2.- CWM Recovery touch 6.0.4.7"
echo "3.- TWRP 2.7.0"
echo "Q.- Quit"
echo 
read option

case $option in
	1) echo "Flashing CWM"; fastboot flash recovery recovery-clockwork-6.0.4.7-falcon.img ;;
	2)echo "Flashing CWM touch"; fastboot flash recovery recovery-clockwork-touch-6.0.4.7-falcon.img ;;
	3) echo "no hay nada aun xD"; echo "nothing here";;
	Q) clear; echo "Goodbye"; echo "Adios"; read; exit;;
	q) clear; echo "Goodbye"; echo "Adios"; read; exit;;

esac

clear
$installer
