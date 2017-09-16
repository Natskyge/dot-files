xrdb -merge ~/.Xresources
xmodmap ~/.xmodmap
xbindkeys
feh --bg-fill "$HOME/Images/wallpapers/solarized-dark.png"

# Statusbar loop
while true; do
   BAT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
   VOL=$( amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]' )
   xsetroot -name " BAT: $BAT% | VOL: $VOL | $( date +"%F %R" )"
   sleep 0.5s
done &

exec dwm
