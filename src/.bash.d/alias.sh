#!/bin/bash

alias grep='grep -inE --color'
alias cls="clear" #ÇÆ 

alias dus="du -s"
alias du0="du --max-depth=0" 
alias du1="du --max-depth=1" 

alias ll='ls -al --color=tty'
alias lS='ls -lhrS --color=auto' #sort by size 
alias lt='ls -lhrt --color=auto' #sort by date

alias psp='ps aux|grep'

#svn operation 
alias rmjvn='find . -name ".svn" -exec rm -rf {} \; >> /dev/null 2>&1' 

alias cds='echo "`pwd`" > ~/.cdsave' #cd save : save where i am 
alias cdb='cd "`cat ~/.cdsave`"' 

alias chmod='chmod -v --preserve-root' 
alias chown='chown -v --preserve-root' 
#alias lftp="lftp user:pwd@ftpip" 

