#!/data/data/com.termux/files/usr/bin/bash
clear
R="\e[0;31m"
Y="\e[0;33m"
G="\e[0;32m"
C="\e[0;34m"
NC="\e[0;0m"
BR="\e[41m"
BW="\e[104m"
DW="\e[1;30"
echo -e "${NC} • ${BR}Created by de@Hdies${NC} • • •"
echo -e "${NC} • ${BW}Termux ADB & Fastboot Flash Installer Tools${NC} • •"
echo -e "${NC} •  ${Y}Installing ${NC}:"
echo -e "${NC}•    ${C}-$NC) ${R}Copying ${G}adb ${Y}To Folder bin${DW}...!!"
echo -e "${NC}•    ${C}-$NC) ${R}Copying ${G}adb.bin ${Y}To Folder bin${DW}...!!"
echo -e "${NC}•    ${C}-$NC) ${R}Copying ${G}fastboot ${Y}To Folder bin${DW}...!!"
echo -e "${NC}•    ${C}-$NC) ${R}Copying ${G}fastboot-armeabi ${Y}To Folder bin${DW}...!!"
echo -e "${NC}•  ${R}+${NC}) ${C}Process${NC}"
echo -e "${NC} • • • • • • • • • • • • • • • ${BR}TF-Flash Installer Tools${NC}"
echo -e "${NC} • ${DW}WWait a Second..!!"
directory="$(pwd)"
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://github.com/deathdies/TFF-Installer/raw/master/bin/adb -P $downpath/ -q
wget https://github.com/deathdies/TFF-Installer/raw/master/bin/adb.bin -P $downpath/ -q
wget https://github.com/deathdies/TFF-Installer/raw/master/bin/fastboot -P $downpath/ -q
wget https://github.com/deathdies/TFF-Installer/raw/master/bin/fastboot-armeabi -P $downpath/ -q
cp $downpath/* $PREFIX/bin
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
cd $directory
rm -rf $downpath
rm -rf TFF-Installer.sh
