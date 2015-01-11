# Random wallpaper
sh ~/Scripts/auto_wallpaper.sh

# Enable fn keys
xbindkeys

# Ensure we load term styles
xrdb ~/.Xresources

# Make sure to include local fonts
xset +fp /usr/share/fonts/local/

# Startup
sxhkd &
exec bspwm
