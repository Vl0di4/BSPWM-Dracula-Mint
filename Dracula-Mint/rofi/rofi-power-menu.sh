CHOICE=$(echo -e "Power Off\nReboot" | rofi -dmenu -p "   Power ")

case $CHOICE in
	"Power Off") poweroff ;;
	"Reboot") reboot ;;
esac
