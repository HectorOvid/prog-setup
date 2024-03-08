#!/usr/bin/bash

ALREADY=$(which nvim)
if [[ "$ALREADY" == *"nvim"* ]]; then
	echo "nvim already installed at: $ALREADY"
else
	echo "Downloading nvim to current dir '$PWD' ..."
	wget -c https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -O - | tar -xz

	echo "Adding to PATH in .profile"
	echo "export PATH=\$PATH:${PWD}/nvim-linux64/bin" >>~/.profile
	source ~/.profile
fi

echo ""
echo "Installed version:"

nvim -v

#################################################################################

# add to .profile , see: https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-editing-commit-messages
# export VISUAL=vim
# export EDITOR="$VISUAL"
# export GIT_EDITOR="$VISUAL"

#################################################################################

# todo add to .bash_aliases
# alias vim=nvim
#
#
# consider creating a token file for git
