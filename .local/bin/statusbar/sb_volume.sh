#!/bin/sh

[ `pamixer --get-mute` = true ] && echo   && exit

# vol=`(amixer sget Master) | awk -F"[][]" '/dB/ { print $2 }'`
vol="`pamixer --get-volume`"

if [ "$vol" -gt "70" ]; then
    icon=""
elif [ "$vol" -lt "30" ]; then
    icon=""
else
    icon=""
fi



#icon="VOL"
#printf "%s %s\\n" "$icon" "$vol"
echo "$icon$vol%"
