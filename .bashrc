#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#alias sudo='doas'
alias cat='bat'

alias kalendarz='calcurse'
alias spotify='ncspot'
alias excel='sc-im'
alias kalkulator='qalculate-gtk'

alias ls='ls --color=auto'
alias ..='cd ..'
alias grep='grep --color=auto'

export HISTCONTROL=ignoreboth

#alias tmux="TERM=screen-256color tmux"
PS1='[\u@\h \W]\$ '

