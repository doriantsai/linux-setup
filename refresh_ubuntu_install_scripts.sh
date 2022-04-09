#!/bin/sh
# install script for Ubuntu 20.04 LTS
# Dorian Tsai
# 2020 May 06

# update and upgrade everything
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove

# make sure to enable universe/multiverse/etc repos
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted

####################################################
# essentials
sudo apt install build-essential vim-gtk terminator htop openssh-server git gcc make cmake pkg-config zip unzip g++ curl dkms wget xclip synaptic gparted exfat-fuse exfat-utils guvcview net-tools ffmpeg ubuntu-restricted-extras chrome-gnome-shell
sudo apt install openjdk-11-jdk libffi-dev

# mamba-forge (better/smaller/faster than conda)
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh

# python
sudo apt install python3 python3-pip python-pip
pip3 install numpy scipy matplotlib ipython jupyter pandas sympy

# for mvt
pip install autopep8 wheel ansitable
# install -e . for spatialmaths and mvt

# latex
sudo apt install texlive-full

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
# https://latextools.readthedocs.io/en/latest/install/

# vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
code --install-extension ms-python.python
code --install-extension gimly81.matlab
code --install-extension james-yu.latex-workshop
code --install-extension formulahendry.code-runner

# android debug bridge - for communicating with emulator/light field camera (Lytro)
sudo apt install adb


