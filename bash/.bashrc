#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

export VISUAL="vim"

alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias maple="wine $HOME/.wine/drive_c/Program\ Files/Maple\ 2015/bin.X86_64_WINDOWS/maplew.exe"
