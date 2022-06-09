#!/bin/zsh
## Kali Post-Installation Script

## System Updates / Upgrades
sudo apt update -y -qq && sudo apt upgrade -y -qq
sudo apt dist-upgrade -y -qq
sudo apt autoremove -y -qq
echo "####  System updated  ####"

## Miscellaneous
sudo apt install -y -qq htop neovim checksec qemu-user-static
echo "####  Miscellaneous packages Installed  ####"

## Tor Browser
sudo apt install -y -qq torbrowser-launcher tor
echo "####  Tor Browser Installed ####"

## RsaCtfTool
cd /opt
sudo git clone --quiet https://github.com/Ganapati/RsaCtfTool.git
sudo apt install  -y -qq libgmp3-dev libmpc-dev
cd RsaCtfTool
pip3 install --quiet -r "requirements.txt"

## Libre Office
sudo apt install -y -qq libreoffice
echo "####  Libre Office Installed ####"

## Python PIP
sudo apt install -y -qq python3-pip
echo "####  Python Package Installer Installed ####"

## Filezilla
sudo apt install -y -qq filezilla
echo "####  Filezilla Installed  ####"

## Image Manipulation
sudo apt install -y -qq exiftool qrencode zbar-tools imagemagick
echo "####  Image Manipulation Tools Installed  ####"

## Gobuster (like dirbuster but faster)
sudo apt install -y -qq gobuster
echo "####  Gobuster Installed  ####"

## Gnu Debugger (GDB)
sudo apt install -y -qq gdb gdb-peda
echo "source /usr/share/gdb-peda/peda.py" >> ~/.gdbinit
echo "####  Gnu Debugger (GDB) Installed  ####"

## SNMP Tools
sudo apt install -y -qq snmp-mibs-downloader
echo "####  SNMP Tools Installed  ####"

## Typora
sudo wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo apt install -y -qq software-properties-common
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update -y -qq
sudo apt install -y -qq typora
#echo "####  Typora Installed  ####"

## AutoRecon
pip3 install --quiet git+https://github.com/Tib3rius/AutoRecon.git
echo "####  AutoRecon Installed  ####"

## nmapAutomater
cd ~/.local/share
git clone --quiet https://github.com/21y4d/nmapAutomator.git
sudo ln -s ~/.local/share/nmapAutomator/nmapAutomator.sh /usr/local/bin
echo "####  nmapAutomator Installed  ####"

## Impacket
wget -q https://github.com/SecureAuthCorp/impacket/releases/download/impacket_0_9_24/impacket-0.9.24.tar.gz -O ~/.local/share/impacket-0.9.24.tar.gz
tar -xf ~/.local/share/impacket-0.9.24.tar.gz -C ~/.local/share/
rm ~/.local/share/impacket-0.9.24.tar.gz
cd ~/.local/share/impacket-0.9.24
pip3 install --quiet .
echo "####  Impacket Installed  ####"

## Bloodhound
sudo apt install -y -qq neo4j
sudo apt install -y -qq bloodhound
sudo mkdir -p /usr/share/neo4j/logs
sudo touch /usr/share/neo4j/logs/neo4j.log
echo "####  Bloodhound Installed  ####"

## Ghidra
sudo apt install -y -qq ghidra
echo "####  Ghidra Installed  ####"

## Evil-WinRM
sudo gem install --silent winrm winrm-fs stringio rubyntlm
sudo gem install --silent evil-winrm
echo "####  Evil-WinRM Installed  ####"

## Docker
sudo apt install -y -qq docker.io
echo "####  Docker Installed  ####"

## Android Tools
sudo apt install -y -qq apktool
echo "####  Android Tools Installed  ####"

## Python-evtx
sudo apt install -y -qq python3-evtx
echo "####  Python3-evtx Installed  ####"

## PwnTools
pip3 install --quiet pwntools

## Powershell
sudo apt install -y -qq powershell
echo "#### Powershell Installed ####"

## OpenJDK and Maven
sudo apt install -y -qq openjdk-11-jdk
sudo apt install -y -qq maven
cd /opt
sudo git clone --quiet https://github.com/veracode-research/rogue-jndi
cd /opt/rogue-jndi
sudo mvn package

## JWCrypto
sudo apt install -y -qq python3-jwcrypto
echo "#### JWCrypto Installed"

## Zsteg
sudo gem install --silent zsteg
echo "#### Zsteg Installed ####"

## PNGcheck
sudo apt install -y -qq pngcheck
echo "#### PNGcheck Installed ####"

## Steghide
sudo apt install -y -qq steghide
echo "#### Steghide Installed ####"

## Outguess
sudo apt install -y -qq outguess
echo "#### Outguess Installed ####"

## Stegcracker
sudo apt install -y -qq stegcracker
echo "#### Stegcracker Installed ####"

## Stegsnow
sudo apt install -y -qq stegsnow
echo "#### Stegsnow Installed ####"

## Stegseek
sudo wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb -O /tmp/stegseek_0.6-1.deb
sudo apt install -y -qq /tmp/stegseek_0.6-1.deb
echo "#### Stegseek Installed ####"

## Gimp
sudo apt install -y -qq gimp
echo "#### Gimp Installed ####"

## Stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O ~/.local/share/Stegsolve.jar
echo "#### Stegsolve Installed ####"

## Audacity
sudo apt install -y -qq audacity
echo "#### Audacity Installed ####"

## Sonic-Visualiser
sudo apt install -y -qq sonic-visualiser
echo "#### Sonic-Visualiser Installed ####"

## FcrackZIP
sudo apt install -y -qq fcrackzip
echo "#### FcrackZIP Installed ####"

## PDFcrack
sudo apt install -y -qq pdfcrack
echo "#### PDFcrack Installed ####"

##leafpad
sudo apt-get install leafpad
echo "#### leafpad Installed ####"

##stacer 
sudo apt install stacer 
echo "#### stacer installed ####"

## Add ~/.local/bin to $PATH
echo 'export PATH=/home/user2/.local/bin:$PATH' >> ~/.zshrc
. ~/.zshrc

####test

echo "####  Finished  ####"
