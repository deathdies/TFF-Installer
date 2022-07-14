#!/data/data/com.termux/files/usr/bin/bash
directory="$(pwd)"
echo
echo -e "\e[93mThis script will install ADB & FastBoot Tools in Termux."
echo
echo -e "\e[32m[*] \e[34mDownloading wrapper script..."
mkdir $PREFIX/tmp/adbtemp
downpath="$PREFIX/tmp/adbtemp"
wget https://raw.githubusercontent.com/deathdies/TFF-Installer/main/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading binaries..."
wget https://raw.githubusercontent.com/deathdies/TFF-Installer/main/bin/adb.bin -P $downpath/ -q
wget https://raw.githubusercontent.com/deathdies/TFF-Installer/main/bin/fastboot -P $downpath/ -q
wget https://raw.githubusercontent.com/deathdies/TFF-Installer/main/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mCopying files to bin..."
cp $downpath/* $PREFIX/bin
echo -e "\e[32m[*] \e[34mSetting execution permissions..."
files="$(ls $downpath)"
cd $PREFIX/bin
chmod +x $files
echo -e "\e[32m[*] \e[34mCreating workspace directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up..."
cd $directory
rm -rf $downpath
rm -rf TFF-Installer.sh
