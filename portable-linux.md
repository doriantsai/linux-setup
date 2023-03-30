# Portable Linux

## Steps on how I installed Ubuntu 20.04 LTS on an external SSD

- I followed these basic install steps: https://itsfoss.com/intsall-ubuntu-on-usb/
- When I booted up for the first time, I was greeted with a blank purple screen: https://askubuntu.com/questions/1150462/ubuntu-18-04-boot-freeze-purple-screen-hangs
- I was able to Ctrl+Alt+F2 to open the terminal and do the following fix:
- After adjusting custom.conf file as above, I rebooted and the login worked
- Tested on two intel-based chips/computers so far

## Notes
- Input/Output speed is key, so make sure to have a fast SSD and a correspondingly fast connection (e.g. USB-C 3.1 10 Gbps cables can be faster than SATA, which is wild)
- It sucks to drop the SSD/break the connection whilst using the OS, so recommend to somehow secure the SSD to the laptop/computer during operation. Velcro apparently works well.
- Unsure of potential driver issues when plugging into a totally different hardware rig. Haven't had any major issues so far, but also haven't used the portable Ubuntu setup for heavier deep learning/nvidia stuff yet.
