# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG=en_US.utf-8
# User specific aliases and functions

stty -ixon
eval `dircolors ~/.dir_colors`
bind -f ~/.inputrc

