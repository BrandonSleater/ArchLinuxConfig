# Random wallpaper
sh ~/Scripts/auto_wallpaper.sh

# Enable fn keys
xbindkeys

# Ensure we load term styles
xrdb ~/.Xresources

# Make sure to include local fonts
xset +fp /usr/share/fonts/local/

# Stop dpms and change timer to 30 min
xset -dpms
xset s 1800 1800

# Shadowing
compton &

# Startup
sxhkd -f 100 &
exec bspwm
