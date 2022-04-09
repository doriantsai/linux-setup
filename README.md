# linux-setup
Setup scripts and configurations for Ubuntu/MacOSX

- `refresh_ubuntu_install_scripts.sh` install scripts for Ubuntu 20.04 refresh

# bashrc modifications:
- set terminal to just display user:current_directory
```
    if [ "$color_prompt" = yes ]; then
      PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
    else
      PS1='${debian_chroot:+($debian_chroot)}\u:\W\$ '
    fi
```
