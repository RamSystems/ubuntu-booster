#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install git -y

sudo apt-get install preload

    sudo cp 'preload.conf' '/etc/preload.conf'

sudo apt-get install prelink -y

    sudo cp 'prelink' '/etc/default/prelink'
    sudo /etc/cron.daily/prelink
    sudo cp '70debconf' '/etc/apt/apt.conf.d/70debconf'



sudo cp  'sysctl.conf' '/etc/sysctl.conf'

	sudo echo 'net.core.default_qdisc = fq_pie' | sudo tee /etc/sysctl.d/90-override.conf


sudo apt-get install zram-config

    sudo cp 'init-zram-swapping' '/bin/init-zram-swapping'

sudo apt-get install gnome-disk-utility -y

sudo add-apt-repository ppa:oibaf/test -yy
sudo apt update && sudo apt install nohang -y
sudo systemctl enable --now nohang-desktop.service


sudo apt-get install grub-customizer -y

sudo cp 'grub' '/etc/default/'

sudo update-grub

sudo -i echo lz4 >> /etc/initramfs-tools/modules
sudo -i echo lz4_compress >> /etc/initramfs-tools/modules
sudo -i echo zsmalloc >> /etc/initramfs-tools/modules
sudo update-initramfs -u

sudo apt-get install indicator-cpufreq -y


git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cp 'auto-cpufreq-installer' 'auto-cpufreq'
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

# use RAM instead of SSD for temp and log files
sudo -i echo '' >> /etc/fstab
sudo -i echo '# use RAM instead of SSD for temp and log files' >> /etc/fstab
sudo -i echo 'tmpfs /tmp tmpfs defaults,noatime,mode=1777 0 0' >> /etc/fstab
sudo -i echo 'tmpfs /var/log tmpfs defaults,noatime,mode=0755 0 0' >> /etc/fstab
sudo -i echo 'tmpfs /var/spool tmpfs defaults,noatime,mode=1777 0 0' >> /etc/fstab
sudo -i echo 'tmpfs /var/tmp tmpfs defaults,noatime,mode=1777 0 0' >> /etc/fstab

sudo apt-get install mesa-utils
sudo apt-get install mesa-utils-extra -y


sudo cp 'hdparm.conf' '/etc/hdparm.conf'

sudo apt-get install htop

# Remove ubuntu spyware 
sudo apt remove ubuntu-report popularity-contest apport whoopsie -y
sudo apt purge ubuntu-report popularity-contest apport whoopsie -y

sudo apt install profile-sync-daemon

sudo apt-get install -y irqbalance

sudo apt-get install thermald

sudo apt install make fakeroot


git clone https://github.com/hakavlad/prelockd.git && cd prelockd
sudo deb/build.sh
sudo apt install --reinstall ./deb/package.deb
sudo systemctl enable --now prelockd.service
sudo systemctl start --now prelockd.service
cd ..

sudo apt-get install synaptic -y

sudo apt-get remove gnome-software -y
sudo apt-get purge gnome-software -y

sudo apt-get remove update-notifier -y
sudo apt-get purge update-notifier -y

sudo apt-get remove thunderbird -y
sudo apt-get purge thunderbird -y

git clone https://github.com/hakavlad/memavaild.git && cd memavaild
deb/build.sh
sudo apt-get install --reinstall ./deb/package.deb
cd ..
sudo cp 'memavaild.conf' '/etc/memavaild.conf'
sudo systemctl enable --now memavaild.service
sudo systemctl restart --now memavaild.service

##############################################################################
# Use tuned-adm.
# The tuned daemon can be used to apply system tuning adjustments either
# dynamically, orstatically.
# There are pre-defined tuning profiles that reflect 
# particular workload requirements.
# Most users will get the most benefit from using a desktop profile 
# The <<tuned-adm list>> command is used to list all available tuning profiles.
# You have 27 options (-:

sudo apt install tuned tuned-utils tuned-utils-systemtap
sudo tuned-adm profile desktop
sudo tuned-adm active
##############################################################################

sudo apt-get autoclean -y

sudo apt-get auto-remove -yy
