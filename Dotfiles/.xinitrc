sh ~/Scripts/auto_wallpaper.sh

# Fn keys
xbindkeys

# Styles
xrdb ~/.Xresources

# Fonts
xset +fp /usr/share/fonts/local/

# Display turn off 30 min
xset -dpms
xset s 1800 1800

# Shadowing
compton &

# Startup
sxhkd -f 100 &
exec bspwm
