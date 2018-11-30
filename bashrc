# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

PROMPT_COMMAND=__promptCommand
__promptCommand() {
	local PS1EXIT="$?"
	history -a;
	PS1=""

	local green="\[\033[32m\]"
	local red="\[\033[31m\]"
	local yellow="\[\033[33m\]"
	local reset="\[\033[0m\]"

	# Check for python virtual env
	if [[ -n ${VIRTUAL_ENV+x} ]]; then
		virtualEnv=$(echo $VIRTUAL_ENV | sed 's/^.*\///')
		PS1+="VENV[${virtualEnv}]"
	fi

	# History Num
	PS1+="${yellow}\!${reset}|"

	# Set color based on previous command result
	if [ $PS1EXIT = 0 ]; then
		PS1+="${green}"
	else
		PS1+="${red}"
	fi
	
	# Time, working directory, and end prompt
	PS1+="\t|\w \$ ${reset}"
}

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    export debian_chroot=$(cat /etc/debian_chroot)
fi

_dotfiles=~/.dotfiles

_files=(
	$_dotfiles/bash_aliases
    $_dotfiles/bash_functions
    $_dotfiles/bash_vars
#    $_dotfiles/bash_old_pwd
#    /etc/bash_completion.d/git # Git bash completion

	# MACOS
	$(brew --prefix)/etc/bash_completion # Brew auto-complete

	~/.bash_work/bash_aliases
	~/.bash_work/bash_functions
	~/.bash_work/bash_vars
)

for file in "${_files[@]}"; do
	if [ -f $file ]; then
		. $file
	fi
done
