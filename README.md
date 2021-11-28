


#
### This tool will download,install and optimize a concept of software and settings.
When the target
is make any ubuntu-based system much more efficient and fast.This of course can help a lot for weak computers,
But the main goal is to give to professionals like ethical hackers, devops and developers The option to use
their system in a much better way while maintaining stability.

#
#### Improve Linux system performance for work or gaming with ubuntu-booster tool
#### [youtube: ubuntu-booster](https://www.youtube.com/watch?v=0RiEPVIc6jQ)

#### super pressure test - 2 processors + 2gb ram ddr3.no GPU.poor internet connection (10mbps):
#### [video2: ubuntu-booster](https://vimeo.com/612487052)
#

The concept focuses on optimizing CPU usage, dynamic-virtual-hard memories, power consumption,
Internet usage and in fact the entire operating system.
With tools such as zram-zswap that are set up to work together perfectly so that the use of dynamic memory
in your system will actually become much more efficient, sophisticated and fast(And more compressed when the general concept causes
That the process of compression and release of memory will not come at the expense of the proper operation of the processor),
Together with a combination of tlp and auto-cpufreq that will manage your power consumption in a smart way and actually
improve the performance of the processor and the entire hardware (critical for laptops).
Other important optimization software like preload && prelink && trim && nohang and other tools have been added.
Settings and optimization software have been improved so that they work together perfectly.
In addition, settings optimized for faster and safer use of the Internet in sysctl.conf,
It all comes along with the option to install The excellent kernels xanmod-cacule or liquorix that can upgrade you to a different label of performance or instead you can stay with
Ubuntu default kernel and still enjoy great performance.
The installer also adds the grub-customizer so you can switch between the kernels whenever you want or if necessary.

It is important to clarify
The installation is only for ubuntu-based distributions (this includes Mint and similar distributions) and only for new and clean systems!
This is because the installation overwrites files and settings on the system.If you still want to install
On an existing distribution you will need to perform a full backup of the entire system before that!

I have been using the concept for a year and to this day I have not had any problems
but it is worth noting that using an advanced kernels like liquorix or xanmod-cacule can sometimes have an effect
on drivers so you have the option to perform the installation without it
or replace it as I already mentioned using grub-customizer even after installation.

The program also removes "ubuntu spyware" from the system, much to the delight of guys who love privacy.
The tool has been tested on lts distributions 20.04 / 18.04 but should work according to logic on any
ubuntu based distribution from version 18.04 LTS when the recommendation is to always use LTS versions.

#
If you intend to run the tool inside a virtual machine the software auto-cpufreq will not work.

Recommends installing on a light and clean desktop like - xfce or LXDE. 
#



# install

#
Open a terminal and run the following command
#
$ sudo apt-get update

$ sudo apt-get install git
#
Download the tool to home folder
#
$ git clone https://github.com/RamSystems/ubuntu-booster.git 

#
$ cd ubuntu-booster &&  chmod +x install_ubuntu_booster.sh &&  sudo ./install_ubuntu_booster.sh -yy
#

or

#

$ cd ubuntu-booster
#
$ chmod +x install_ubuntu_booster.sh
#
$ sudo ./install_ubuntu_booster.sh
#

You have three options:
1. Install with the excellent liquorix kernel
2. Install with xanmod-cacule kernel
3. You can install with the default kernel of Ubuntu distributions

It is possible to backup important files 

You will always have the option to use the tool
Grub Customizer which is also installed
To replace kernel

#
### Use tuned-adm
To choose the profile that can suit your requirements 

#### Enter to list profiles [* you have 27 profiles (-: *]
#
$ tuned-adm list
#
#### Select a profile
#
$ sudo tuned-adm {profile name}
#
#### Activate the profile 
#
$ sudo tuned-adm active
# 
#



### Use booster-pocket-router (beta)

While more and more people today have a fast Internet connection,
there are plenty of other people that do not.
The aim of this project is to create a solution that combines multiple
Internet access points (LTE, ADSL) into one single tunable network connection.

How does it work?
In short words, when booster spawns,
it identifies the network interfaces available in the system that provide an 
active internet connection. It then starts a socks5 proxy server.
According to some particular strategy (still not configurable),
and a set of policies (configurable),
the server is able to distribute the incoming
network traffic across the collected network interfaces.

More details on the developer page:
https://github.com/booster-pocket-router/booster 

#### install booster-pocket-router from snap

#### For ubuntu

#
$ sudo apt update
#
$ sudo apt install snapd
#
$ sudo snap install booster --beta

#
#### For mint

#
$ sudo rm /etc/apt/preferences.d/nosnap.pref
#
$ sudo apt update
#
$ sudo apt install snapd
#
$ sudo snap install booster --beta
#
#### To use the tool
#
#### opening the terminal and run the command:
#
$  /snap/booster/126/booster server
#
#### To stop the service simply close the terminal or press ctrl + c 
#
#
#
# Feel the power of Linux 

#### Enjoy!

