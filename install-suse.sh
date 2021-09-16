# For OpenSUSE with zypper
# make sure you have a fricking DE/WM first. This shit won't install Desktop Manager

echo "[OwO] : Hello!"

echo "This script was made for OpenSUSE-Tumbleweed, if you use Leap. It may won't work"
echo "I haven't test this script yet, don't expect this script will works on your machine"

if $(whoami) == root
then
	# Install packages
	echo "Install i3-gaps, polybar, compton (picom), rofi, dunst notification daemon and ranger, feh (for wallpaper) and rxvt-unicode"
	zypper install i3-gaps polybar picom rofi dunst wmctrl feh sxiv ranger rxvt-unicode git
	
	echo "Install Siji Fonts"
	echo "clone the repo of siji"
	git clone https://github.com/stark/siji

	echo "make sure the install.sh executable"
	chmod +x ./siji/install.sh
	
	echo "execute the install.sh"
	./siji/install.sh
	
	# Copy shits
	echo "copy the config files"
	cp ./.config/* ~/.config/

	# Copy font
	echo "almost forgets about the fonts LeL"
	cp /.config/fonts ~/.fonts
	
	echo "copy urxvt"
	cp ,/{,vimrc, .Xdefaults, wallpaper*, neofetch.png} ~/

	# Last Touch
	echo "set your wallpaper"
	feh --bg-fill ~/wallpaper*

	echo "Done! This script should done its job. If there's anything wrong, please make an issue on my Github. Please"

else
	echo "run this script as root in order to makes it run properly"
fi
