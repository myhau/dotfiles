#!/bin/sh

## xubuntu post-installation script

echo "Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&

echo "Installing GetDeb" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&

echo "Installing PlayDeb" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&

echo "Deleting Downloads" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb

# vlc repo
sudo add-apt-repository -y ppa:videolan/stable-daily

# gimp repo
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp

#transmissionbt repo
sudo add-apt-repository -y ppa:transmissionbt/ppa

# numix theme repo
sudo apt-add-repository -y ppa:numix/ppa


sudo apt-get update

#uninstall bullshit


# essential toooooolz
sudo apt-get -y install vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager openjdk-8-jre openjdk-8-jdk unace unrar zip unzip p7zip-full p7zip-rar sharutils rar arj cabextract libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras libreoffice qalculator maxima virtualbox irssi iotop sysstat baobab gparted xclip vim aria2 usb-creator-gtk numix-icon-theme-circle wine



# install chrome beta
if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-beta_current_amd64.deb &&
	sudo dpkg -i google-chrome-beta_current_amd64.deb &&
	rm -f google-chrome-beta_current_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-beta_current_i386.deb &&
	sudo dpkg -i google-chrome-beta_current_i386.deb &&
	rm -f google-chrome-beta_current_i386.deb
fi


# upgrade
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade


# cleanup


sudo apt-get -f install &&
sudo apt-get -y autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean


./post-install-config.sh