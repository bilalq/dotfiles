#ls aliases and such
alias ls='ls --color=auto'
alias ls='ls -G'
alias l=ls
alias s=ls
alias ll="ls -lh"
alias la="ls -alh"
alias lsd='ls -Gal | grep ^d'
alias lf='ls -l | grep ^d'

#convenience
alias bmod='vim ~/.bashrc'
alias bsave='source ~/.bashrc'
alias alt='vim ~/.bash_aliases'
alias vmod='vim ~/.vimrc'
alias vi='vim'
alias v='vim'
alias c='clear'
alias ..='cd ..'
#alias vgacheck="sudo cat /sys/kernel/debug/vgaswitcheroo/switch"
#alias apacherestart="sudo service apache2 restart"
alias tmux="tmux -2"

#moving around
alias me='cd ~/;ls'
alias doc='cd ~/Documents/;ls'
aliast dot='cd ~/Documents/dotfiles;ls'

#ssh aliases
alias facade='ssh facade.rutgers.edu'
alias dream='ssh ps61838.dreamhost.com'
alias patterns='ssh patterns.rutgers.edu'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
