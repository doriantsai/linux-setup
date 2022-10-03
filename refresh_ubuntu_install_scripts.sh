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
sudo apt install openjdk-11-jdk libffi-dev tmux gnome-shell-extension-prefs

# git config?
git config --global user.name "Dorian Tsai"
git config --global user.email dorian.tsai@gmail.com

# vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# add pathogen/infect line to .vimrc
echo -e "execute pathogen#infect()" >> ~/.vimrc
echo -e "syntax on" >> ~/.vimrc
echo -e "filetype plugin indent on" >> ~/.vimrc
# install vim-sensible
cd ~/.vim/bundle && \
git clone https://github.com/tpope/vim-sensible.git
# TODO: for vim: YouCompleteMe, rainbow

# mamba-forge (better/smaller/faster than conda)
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh

# python
sudo apt install python3 python3-pip python-pip
pip3 install numpy scipy matplotlib ipython jupyter pandas sympy

# dropbox 64-bit
# https://linoxide.com/install-dropbox-ubuntu/
sudo apt install python python-gpgme
# can download dropbox via terminal, but then requires making service, which is actually easier to install via GUI
# sudo wget -O /usr/local/bin/dropbox "https://www.dropbox.com/download?dl=packages/dropbox.py"
# sudo chmod +x /usr/local/bin/dropbox

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

###############################################################################################

# google chrome
sudo apt install libxss1 libappindicator1 libindicator7 # for chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# art/media/graphics
sudo apt install pulseaudio imagemagick
sudo snap install vlc
# install gimp
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# restart computer
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
# flatpak run org.gimp.GIMP//stable
flatpack update

# install youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

# audacity
sudo add-apt-repository ppa:ubuntuhandbook1/audacity
sudo apt-get update
sudo apt-get install audacity

# # blender
# sudo add-apt-repository ppa:thomas-schiex/blender &&
# sudo apt-get update &&
# sudo apt-get install blender

# slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb
sudo apt install ./slack-desktop-*.deb

# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb &&
sudo apt install ./zoom_amd64.deb

##########################################################################
# UI customisation stuff
sudo apt install compizconfig-settings-manager gnome-tweak-tool


