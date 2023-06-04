# Linux-setup
My setup scripts and configurations for Ubuntu 20.04 LTS. Largely a repo for keeping track of all the little tweaks and common fixes that I seem to end up dealing with when working with Linux systems.

- always `sudo apt update` first
- see `refresh_ubuntu_install_scripts.sh` for install scripts for Ubuntu 20.04 refresh
- see `portable-linux.md` for how to install Ubuntu on a portable SSD that can work on almost any computer of the same architecture.
- see `bash_aliases` for some of my common bash aliases (need to update)
- 
# Different Backgrounds for Different Monitors

- https://gitlab.com/gabmus/HydraPaper#flatpak-universal-package
- Assume flatpak is already installed (https://flatpak.org/setup/Ubuntu)
  
      sudo apt install flatpak
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    
- restart the system
    
      flatpak install flathub org.gabmus.hydrapaper
      flatpak run org.gabmus.hydrapaper
    
# A good start to drivers

- Automatically install drivers, and this can streamline the installation of Nvidia drivers https://askubuntu.com/questions/543325/how-to-download-all-required-ubuntu-drivers
      
      sudo ubuntu-drivers autoinstall
      sudo reboot


# Oh my zsh
More featured terminal, also applicable for Mac OSX
- Main oh my zsh program sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- Powerlevel10k https://github.com/romkatv/powerlevel10k#oh-my-zsh
- Fuzzy logic finder, fzf: https://github.com/junegunn/fzf, note: `brew` for MacOS, or `sudo apt` for Ubuntu. The second line below installs useful key bindings and fuzzy completion
```
brew install fzf
$(brew --prefix)/opt/fzf/install
```
- zsh-suggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
- zsh-syntax--highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
- advanced tab completion: add to `~/.zshrc`:
```
autoload -U compinit
compinit
```

# Black
Allows for formatting python scripts automatically to fit style guide. Automatically fixes upon save. 
https://black.readthedocs.io/en/stable/getting_started.html
Can also use command line:
```
black {source_file_or_directory}
```
# Mamba/Conda-forge install
```
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
bash Mambaforge-$(uname)-$(uname -m).sh
```

# ROS installation
- see `install_robostack.md`

# cleanup apt
- mark pyz as executable `chmod a+x aptsources-cleanup.pyz`
- run aptsources-cleanup.pyz as `sudo ./aptsources-cleanup`

# .bashrc modifications:
- set terminal to just display user:current_directory
```
    if [ "$color_prompt" = yes ]; then
      PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
    else
      PS1='${debian_chroot:+($debian_chroot)}\u:\W\$ '
    fi
```

# increase swap space on Ubuntu
- https://linuxhandbook.com/increase-swap-ubuntu/


# Windows and Ubuntu dual-boot time issues:
- Set ubuntu to run on local time instead of UTC:

    timedatectl set-local-rtc 1
