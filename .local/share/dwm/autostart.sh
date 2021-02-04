#!/bin/sh

# Load bitmap fonts
(xset fp+ ~/.fonts/misc && xset fp rehash) &

# Set keyboard settings - 250 ms delay and 25 cps repeat rate
xset r rate 250 25 &

# Turn off system beep
xset b off &

# Screen
xset s off
xset -dpms

xrdb -merge ~/.Xresources &

# Start Programs

# compositor
killall compton
#while pgrep -u $UID -x compton 2>/dev/null; do sleep 1; done
#compton --experimental-backends --blur-background-fixed --blur-method "gaussian" --blur-size 10 --blur-deviation 5 --corner-radius 8 --round-borders 8 --backend glx --vsync &
#compton --config ~/.config/compton.conf &
compton --vsync opengl-swc --backend glx &

# wallpaper
killall nitrogen
nitrogen --restore &

# eyesight
#killall redshift
#while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
#redshift -r -l 38.90:-77.16 &

# dwmblocks
export PATH=$HOME/.local/bin:$HOME/.local/bin/statusbar:$PATH
killall dwmblocks
dwmblocks &
