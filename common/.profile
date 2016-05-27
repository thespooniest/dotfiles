#!/usr/bin/env dash

. /etc/profile
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Terminal stuff
if [ "$TERM" = 'linux' ] ; then
    stty iutf8
    #if [ -f /usr/local/share/consolefonts/ter-112n.psf.gz ] ; then
    #    setfont -v /usr/local/share/consolefonts/ter-112n
    #fi
    #sudo echo 3 > /sys/class/graphics/fbcon/rotate_all
fi
