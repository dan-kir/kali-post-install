#!/bin/zsh
## Kali Post-Installation Script

## System Updates / Upgrades
sudo apt update -y -qq && sudo apt upgrade -y -qq
sudo apt dist-upgrade -y -qq
sudo apt autoremove -y -qq
echo "####  System updated  ####"


echo "####  Finished  ####"
