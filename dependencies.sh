#!/bin/bash
# All the below instructions only apply to Linux based OS environment

Log_FILE = ./dependencies_installation.log

CommandLog () {
author= 'whoami'
startdate=$(date)
scriptName='dependencies_installation.log'

echo "${author}"
echo "[$startdate]:[INSTALLATION]: This is ${scriptName}, which shows the loging of install_openLane.sh:"


echo "=============================================="
echo "----KICK OFF Dependencies Installation----"
echo "=============================================="
echo

# Libraries Installation - the commands shown below might seem a lot, but these are the dependencies you need to run the OpenSource tools.
# I have compiled all the possible dependencies together that are required to run the tools instead of running each command again and again. 


cd
sudo apt-get update
sudo apt-get install git-all m4 tcsh csh libx11-dev libx11-xcb-dev tcl-dev tcllib swig vim-gtk \
	tk-dev libcairo2-dev mesa-common-dev \
	libglu1-mesa-dev libncurses-dev \
	build-essential clang bison flex \
	libreadline-dev gawk libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev vim \
	adms autoconf automake libtool libxpm-dev libxaw7-dev libssl-dev libgtk-3-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev xterm graphicsmagick ghostscript \
  ufw device-tree-compiler python3-pip --assume-yes
  
  
# GAW Installation

# GAW is used to display the output curves from the xschem simulation

cd
wget http://download.tuxfamily.org/gaw/download/gaw3-20220315.tar.gz
tar -xvzf gaw3-20220315.tar.gz
cd gaw3-20220315
./configure
make -j$(nproc)
sudo make install
cd
gaw
# (--close gaw)
cd .gaw/
vim gawrc
# check for the line up_listenPort = 0 and change the 0 to 2020 (press i to start editing and press Esc, :wq to save and exit)
cd

# If you want to know the reason why we open and close gaw, also the change of up_listenPort to 2020, give a read on the link mentioned below.
# https://github.com/bluecmd/learn-sky130/blob/main/schematic/xschem/getting-started.md#installation-of-gaw
