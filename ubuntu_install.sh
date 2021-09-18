#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install git -y


sudo apt-get install preload

    sudo cp 'preload.conf' '/etc/preload.conf'

sudo apt-get install prelink -y

    sudo cp 'prelink.conf' '/etc/prelink.conf'
    sudo /etc/cron.daily/prelink
    sudo cp '70debconf' '/etc/apt/apt.conf.d/70debconf'



sudo cp  'sysctl.conf' '/etc/sysctl.conf'

sudo apt-get install zram-config

    sudo cp 'init-zram-swapping' '/bin/init-zram-swapping'

sudo apt-get install gnome-disk-utility -y

sudo add-apt-repository ppa:oibaf/test -yy
sudo apt update && sudo apt install nohang -y
sudo systemctl enable --now nohang-desktop.service


sudo cp 'grub' '/etc/default/'


sudo update-grub

sudo -i echo lz4 >> /etc/initramfs-tools/modules
sudo -i echo lz4_compress >> /etc/initramfs-tools/modules
sudo -i echo z3fold >> /etc/initramfs-tools/modules
sudo update-initramfs -u

sudo apt-get install indicator-cpufreq -y


cd auto-cpufreq
sudo bash auto-cpufreq-installer -i
sudo auto-cpufreq --install 
cd ..

sudo apt-get install tlp  -y
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo add-apt-repository ppa:linuxuprising/apps -yy
sudo apt-get update
sudo apt install tlpui -y

sudo cp 'tlp.conf' '/etc/tlp.conf'


sudo cp 'trim' '/etc/cron.daily/'
sudo chmod a+x /etc/cron.daily/trim

sudo apt-get install mesa-utils
sudo apt-get install mesa-utils-extra -y


sudo cp 'hdparm.conf' '/etc/hdparm.conf'


sudo apt-get install grub-customizer -y

sudo apt-get install htop
