#!/usr/bin/env bash

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ls='ls -F --color=auto'

if [ "putty" == "${TERM}" ] ; then
    alias dvtm='NCURSES_NO_UTF8_ACS=1 dvtm'
fi

#alias postpexml='curl --header "Content-Type: application/pe+xml" --header "Accept: text/plain" -vD - --data-binary'
alias postpexml='curl --header "Content-Type: application/pe+xml" --header "Accept: text/plain" --data-binary'
alias postpexmljson='curl --header "Content-Type: application/pe+xml" --header "Accept: application/ld+json" --data-binary'

# Source greps
alias sgrep='grep color=auto --exclude-dir=\.svn'
