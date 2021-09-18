#!/bin/bash

# This tool will download,install and optimize
# a concept of software and settings.
# Its purpose is to optimize the system and make it
# work much faster while maintaining stability.

# Warning !!
# The installation is intended only for distributions based
# on Ubuntu LTS 20.04 and immediately after installing a new and clean system.
# Installation on old systems may overwrite existing settings.
# For this reason it is required to make a full backup of
# old systems before installation! 

sudo apt-get install dialog

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Create by mRsUrA https://github.com/mRsUrA"
TITLE="Feel the power of Linux"
MENU="Choose one of the following options:"

OPTIONS=(1 "1.Install with liquorix kernel"
         2 "2.Install with ubuntu kernel"
         3 "3.Backup important files")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            sudo ./liquorix_install.sh
            echo "###############################################"
            echo "Please support us.Bitcoin address"
	    echo "bc1ql49pjc20jpddgkr0vn8xssefmt24tkjr00f0kd"
            echo "###############################################"
	    echo "Installation complete Please reboot your system"
            echo "###############################################"
             sleep 3
                exit
            ;;
        2)
            sudo ./ubuntu_install.sh
            echo "###############################################"
            echo "Please support us.Bitcoin address"
	    echo "bc1ql49pjc20jpddgkr0vn8xssefmt24tkjr00f0kd"
            echo "###############################################"
	    echo "Installation complete Please reboot your system"
            echo "###############################################"
             sleep 3
                exit
            ;;
        3)
            sudo ./beckup.sh
            echo "###########################################################"
            echo "The backup is saved in '/home/beckup_ubuntu_super_booster/' "
            echo "###########################################################"
             sleep 3
               sudo ./install_ubuntu_booster.sh 
            ;;
esac
