#!/usr/bin/env sh
# Commands to be run for all login shells.

# Systemwide profile
if [ -f /etc/profile ] ; then
    source /etc/profile
fi

# Custom things
PATH=$PATH:~/usr/bin
export PATH

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
export LD_LIBRARY_PATH

LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib
export LD_RUN_PATH

CLASSPATH=$CLASSPATH:~/usr/lib/java
export CLASSPATH
