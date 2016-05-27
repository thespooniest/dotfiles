#!/usr/bin/env bash

# User specific environment and startup programs

if [ -r ~/.profile ]; then
    source ~/.profile
fi

# Get the aliases and functions
if [ -n "$PS1" -a -r ~/.bash_interactive ]; then
    source ~/.bash_interactive
fi

#
# setup ssh-agent
#
#[ -z "$SSH_AUTH_SOCK" ] && SSH_AUTH_SOCK=$(ls -l /tmp/ssh-*/agent.* 2>/dev/null | grep $(whoami) | awk '{print $9}')
#[ -z "$SSH_AGENT_PID" -a -z `echo $SSH_AUTH_SOCK | cut -d. -f2` ] && SSH_AGENT_PID=$((`echo $SSH_AUTH_SOCK | cut -d. -f2` + 1))
#[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
#[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID

# start agent if necessary
#if [ -z "$SSH_AGENT_PID" ] && [ -z "$SSH_TTY" ] ; then
#    # No agent and not in SSH
#    eval `ssh-agent -s` > /dev/null
#fi

# Set up addition of keys when needed
#if [ -z "$SSH_TTY" ] ; then
#    # Not using SSH; check for keys
#    ssh-add -l > /dev/null
#    if [ $? -ne 0 ] ; then
#        alias ssh='ssh add -l > /dev/null || ssh-add && unalias ssh ; ssh'
#        if [ -f "/usr/lib/ssh/x11-ssh-askpass" ] ; then
#            SSH_ASKPASS="/usr/lib/ssh/x11-ssh-askpass"
#            export SSH_ASKPASS
#        fi
#    fi
#fi
