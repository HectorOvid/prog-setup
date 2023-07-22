#!/usr/bin/bash


# echo Adding xdg env to .profile
# echo "export XDG_CONFIG_HOME=${PWD}" >> ~/.profile
# source ~/.profile



if [[ "$ALREADY" == *"nvim"* ]] ; then
  echo "nvim already installed at: $ALREADY"
else
  echo "Downloading nvim ..."
  wget -c https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -O - | tar -xz

  echo "Adding to PATH in .profile"
  echo "export PATH=\$PATH:${PWD}/nvim-linux64/bin" >> ~/.profile
  source ~/.profile
fi



# todo add to .bash_aliases
# alias vim=nvim



