#!/usr/bin/env bash

# Commands to be run for all interactive, non-login shells

# Source global definitions
if [ -r /etc/bashrc ] ; then
	source /etc/bashrc
fi

# Check to make sure we're really interactive.
# If so, run bash_interactive.
if [ -n "$PS1" -a -r ~/.bash_interactive ] ; then
    source ~/.bash_interactive
fi
