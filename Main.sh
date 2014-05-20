#!/bin/bash
# MenuInstaler for Falcon
# Autor: Klozz Jesús
# date: may 20 2014
## V1.0
export TOPDIR=$(cd $(dirname "$0"); pwd)
cd $TOPDIR
export installer=$TOPDIR/menu
export bina=$TOPDIR/binarios

echo "After you use it please install Fastboot tools and Adb"
echo "type on terminal sudo apt-get install android-tools-adb"
echo "and sudo apt-get install android-tool-fastboot"
echo
echo "if you have instaled fastboot and adb continue press 1 if not press Q"
echo
echo "__________________________________________________________________"

read opcion

	case $opcion in
		1) echo "ok continue"; 
			$installer/InstallerFalcon.sh ;;
		Q) echo "Goodbye!"; echo "Chau :)";;
		q) echo "Goodbye!"; echo "Chau :)";;
		*) echo "Invalid option!, Please try again!"; break;
			echo;;
esac
clear
$installer
