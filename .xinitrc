# Set background
sh ~/.fehbg &

# Enable fn
xbindkeys

# Ensure we load term styles
xrdb ~/.Xresources

sxhkd &
exec bspwm
