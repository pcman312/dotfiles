alias sudo='sudo '

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls -FG'
#
#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#fi

alias ls='ls -FG'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# This alert command only works on ubuntu AFAIK
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias lh='ls -lh'
alias llh='ls -lh'
alias llah='ls -lah'

alias less='less -iNR'

# Re-aliasing top/htop
#alias top='htop'
#alias topf='/usr/bin/top'

alias vi='/usr/bin/vim'

# Old script that I've lost, but keeping it here as a reminder to make it some time in the future
#alias exit='~/dev/scripts/setOldPwd.sh; exit;'

############# Golang ##############################
alias gob='go build'
alias updateGogland='/opt/gogland/updateGogland.pl'

############# git #################################
alias gits='git status'
alias gs='git status'
