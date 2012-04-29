#ls aliases and such
alias ls='ls --color=auto'
alias l=ls
alias s=ls
alias ll="ls -lh"
alias la="ls -alh"
alias lsd='ls --color=always -al | grep ^d'
alias lf='ls --color=always -l | grep ^d'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#convenience
alias chrome="chromium-browser &"
alias bmod='vim ~/.bashrc'
alias bsave='source ~/.bashrc'
alias alt='vim ~/.bash_aliases'
alias vmod='vim ~/.vimrc'
alias vi='vim'
alias v='vim'
alias cc='clear'
alias ..='cd ..'
alias vgacheck="sudo cat /sys/kernel/debug/vgaswitcheroo/switch"
alias apacherestart="sudo service apache2 restart"

#moving around
alias me='cd ~/;ls'
alias doc='cd ~/documents/;ls'
alias win7='cd /media/Acer/'
alias devio="cd ~/devio/develop.io;ls"

#ssh aliases
alias facade='ssh facade.rutgers.edu'
alias dream='ssh ps61838.dreamhost.com'
alias patterns='ssh patterns.rutgers.edu'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
