# Installing Nvidia Drivers

First attempt should be:

    sudo ubuntu-drivers autoinstall
    sudo reboot
    
Semi-nuclear option:

Purge all Nvidia & Cuda drivers, and then download the latest from Nvidia:

    sudo apt-get remove --purge '^nvidia-.*'
    sudo apt-get remove --purge '^libnvidia-.*'
    sudo apt-get remove --purge '^cuda-.*'
    
Run the following
  
    sudo apt-get install linux-headers-$(uname -r)
    
Download latest run file from Nvidia site (https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_local), and run it, accept if needed to upgrade current, or install from scratch.
The driver is back to work.

Then reboot the computer.
