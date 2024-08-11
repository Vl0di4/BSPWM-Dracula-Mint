OPTIONS="Night Mode\nSet Warmth"

CHOICE=$(echo -e "$OPTIONS" | rofi -dmenu -p "NightMode")

case "$CHOICE" in
	"Night Mode")
		if [ "$(xsettingsd -q | grep "night_mode" | awk '{print $2}')" = "true" ]; then
			xsettingsd --night-mode off
		else
			xsettingsd --night-mode on
		fi
		;;
	"Set Warmth")
		WARMTH=$(echo -e "Low\nMedium\nHigh" | rofi -dmenu -p "Set Warmth")
		case "$WARMTH" in
			"Low")
				xsettingsd --warmth 0.5
				;;
			"Medium")
				xsettingsd --warmth 0.75
				;;
			"High")
				xsettingsd --warmth 1
				;;
		esac
		;;
esac

