#!/bin/bash
# MenuInstaler for Falcon
# Autor: Klozz Jesús
# date: may 20 2014
## V1.0
export TOPDIR=$(cd $(dirname "$0"); pwd)
cd $TOPDIR
export installer=$TOPDIR/menu
export bina=$TOPDIR/binarios

clear

echo "             ####################################################"
echo "             ####             AutoInstall Falcon             ####"
echo "             ####         Autor: Klozz Jesus AKA             ####"
echo "             ####              TeamMEX in XDA           V1.0 ####"
echo "             ####################################################"


echo "           Welcome $(whoami) to Auto Installer for Falcon device "
echo "__________________________________________________________________"
echo " Your Installer directory is $TOPDIR..."
echo ""

read -p "Press [ENTER] to continue"
clear
echo
echo "             ####################################################"
echo "             ####             AutoInstall Falcon             ####"
echo "             ####         Autor: Klozz Jesus AKA             ####"
echo "             ####              TeamMEX in XDA           V1.0 ####"
echo "             ####################################################"
echo "__________________________________________________________________"

echo " Menu "
echo "1.-Install logo.bin"
echo "2.-Install recovery.img"
echo "3.-Install Kernel"
echo "4.-Boot into Fastboot"
echo ""
echo "Q.  Quit installer"
echo
echo " Enter desired option number (without . after it) and press enter"

read OPT
export dire=$TOPDIR/menu
case $OPT in
	1) $dire/logo/logo.sh ;;
	2) $dire/recovery/recovery.sh ;;
	3) $dire/kernel/kernel.sh ;;
	4) $dire/reboot/rebootf.sh ;;
	Q) clear; echo "Goodbye"; echo "Adios"; read; exit;;
	q) clear; echo "Goodbye"; echo "Adios"; read; exit;;

esac

clear
$installer
