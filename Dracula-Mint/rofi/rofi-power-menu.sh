CHOICE=$(echo -e "Reboot\nShutdown" | rofi -dmenu -p "Power Menu")

case $CHOICE in
	Reboot)
		reboot
		;;
	Shutdown)
		shutdown -h now
		;;
	*)
		exit 1
		;;
esac
