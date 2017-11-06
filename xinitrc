# Load configs
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys

# Background image
feh --bg-fill "$HOME/usr/images/wallpaper/Tokyo-City-Tilt-Shift-Lens-View.jpg"

# Statusbar
bar | lemonbar -p -f "GohuFont:size=11" -f "DejaVu Sans Mono:size=11" -B "#263238" -F "#CDD3DE" -g 1366x20+0+0 -o -2 &

# Compton
compton -Ccb

2bwm&
exec st
