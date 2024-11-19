#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Add path to my scripts
PATH=$PATH:~/.local/bin

# Source virtualenvwrapper functions
# source /usr/bin/virtualenvwrapper.sh

# Aliases
alias e='emacs -nw'
alias lha='ls -lha'
alias remove_backups='rm -i $( ls -a | grep [#~] )'

remote_clean_emacs() {
ssh tetris <<limiter
killall -9 emacs
emacs --daemon
exit
limiter
}

sshport () {
    target=$1
    local_port=$2
    remote_port=${3:-$local_port}
    ssh -L "$local_port":localhost:"$remote_port" -N "$target"
}
