#!/bin/bash

if [ -e $HOME/.dotfiles ]; then
	echo "Looks like you've already been set up. Skipping second setup"
	exit 1
fi

set -e

# Figure out where this script is
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
absDir="$(realpath $scriptDir)"

# Create the link to this repo
ln -s $absDir/ $HOME/.dotfiles

# Create a backup directory for any existing .bash files
backupDir=$absDir/backup/$(date '+%FT%T')
mkdir -p $backupDir

# Create symlinks for bash (which is really just the bash_profile) and for ease of vim-ing
for absFile in $absDir/bash*; do
	file=$(basename $absFile)

	# If the file already exists, move it to the backup folder
	if [ -e $HOME/.$file ]; then
		mv $HOME/.$file $backupDir
	fi

	ln -s $absFile $HOME/.$file
done
