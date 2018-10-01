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
alias postpexmlrdf='curl --header "Content-Type: application/pe+xml" --header "Accept: application/rdf+xml" --data-binary'

alias putpexml='curl -X PUT --header "Content-Type: application/pe+xml" --header "Accept: text/plain" --data-binary'
alias putpexmljson='curl -X PUT --header "Content-Type: application/pe+xml" --header "Accept: application/ld+json" --data-binary'
alias putpexmlrdf='curl -X PUT --header "Content-Type: application/pe+xml" --header "Accept: application/rdf+xml" --data-binary'

# Source greps
alias sgrep='grep color=auto --exclude-dir=\.svn'

# PHP linting
alias php-lintall='find ./ -name .svn -prune -o -name \*.php -print0 | xargs -0l1 php -l'

# Utilities
alias beep="echo -ne '\007'"
