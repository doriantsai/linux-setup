# linux-setup
Setup scripts and configurations for Ubuntu/MacOSX
- always `sudo apt update` first
- see `refresh_ubuntu_install_scripts.sh` for install scripts for Ubuntu 20.04 refresh

# Oh my zsh
More featured terminal, also applicable for Mac OSX
- Main oh my zsh program sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- Powerlevel10k https://github.com/romkatv/powerlevel10k#oh-my-zsh

# Black
Allows for formatting python scripts automatically to fit style guide. Automatically fixes upon save. Can also use command line:
```
black {source_file_or_directory}
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
- set ls to show 
