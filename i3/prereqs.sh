#!/bin/bash
# Script to download and install required packages for i3 config on Ubuntu

echo "Creating i3 temp directory in ~/Downloads/i3temp"
mkdir -p ~/Downloads/i3temp/

# media control support
echo "Downloading playerctl..."
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb -O ~/Downloads/i3temp/playerctl.deb

# brightness control
sudo apt install xbacklight

echo "Installing playerctl..."
sudo dpkg -i ~/Downloads/i3temp/playerctl.deb

# wallpaper switcher
echo "Installing feh..."
sudo apt install feh -y

# multiple monitors
echo "Installing arandr..."
sudo apt install arandr -y

# Download/install font awesome
echo "Downloading font awesome..."
wget https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.tar.gz -O ~/Downloads/i3temp/font-awesome.tar.gz
echo "Installing font awesome..."
tar -xvzf ~/Downloads/i3temp/font-awesome.tar.gz -C ~/Downloads/i3temp/
mkdir -p ~/.fonts
cp ~/Downloads/i3temp/Font-Awesome-4.7.0/fonts/fontawesome-webfont.ttf ~/.fonts/

# Install pavucontrol
echo "Installing pavucontrol..."
sudo apt install pavucontrol -y

# Install moar fonts
echo "Downloading YosemiteSanFrancisco Font..."
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip -O ~/Downloads/i3temp/sanfran.zip
unzip ~/Downloads/i3temp/sanfran.zip -d ~/Downloads/i3temp/
cp ~/Downloads/i3temp/YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/

# Install lxappearance for GTK themes
echo "Installing lxappearance..."
sudo apt install lxappearance
echo "Don't forget to run lxappearance to configure fonts, icons, and theme!"

# Install Infinality for alternative font rendering
# sudo add-apt-repository ppa:no1wantdthisname/ppa
# sudo apt update
# sudo apt upgrade -y
# sudo apt install fontconfig-infinality
# sudo bash /etc/fonts/infinality/infctl.sh setstyle
# echo "edit /etc/profile.d/infinality-settings.sh and USE_STYLE="UBUNTU""

# Install rofi
echo "Installing rofi..."
sudo apt install rofi -y

# Install compton for transparencies
echo "Installing compton..."
sudo apt install compton -y

# Install i3 bar block utils
echo "Installing i3blocks..."
sudo apt install i3blocks -y
echo "cp /etc/i3blocks.conf ~/.config/i3/i3blocks.conf"
cp /etc/i3blocks.conf ~/.config/i3/i3blocks.conf

echo "\nFinished!"
echo "Don't forget to configure arandr for multiple monitors!"
echo "Don't forget to run lxappearance to configure fonts, icons, and theme!"
echo "Edit ~/.gtkrc-2.0 and .config/gtk-3.0/settings.ini for Yosemite font"
echo "Do you need to download Roboto?"
echo "edit /etc/profile.d/infinality-settings.sh and USE_STYLE="UBUNTU""
echo "Don't forget to change dmenu to rofi"
echo "Don't forget to change to i3blocks in i3 conf and edit it!"
