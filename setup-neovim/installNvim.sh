#!/usr/bin/bash
# see github.com/neovim/neovim/wiki/Installing-Neovim


# usually lives in /usr/bin/nvim
# but we like to put it just somewhere and add a PATH link to it

ALREADY=$(which nvim)
echo "$ALREADY"
if [[ "$ALREADY" == *"nvim"* ]] ; then
  echo "nvim already installed at: $ALREADY"
else
  echo "Downloading nvim ..."
  wget -c https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz -O - | tar -xz

  echo "Adding to PATH in .profile"
  echo "export PATH=\$PATH:${PWD}/nvim-linux64/bin" >> ~/.profile
  source ~/.profile
fi

echo ""
echo "Installed version:"

nvim -v

# sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
# sudo update-alternatives --config editor

# NOW USING LAZY VIM instead of these:
# NVIM_PACKAGE_MANAGER_HOME=~/.local/share/nvim/site/pack/packer/start/packer.nvim
# if test -d "$NVIM_PACKAGE_MANAGER_HOME"; then
#	echo "You already have the package manager :) at $NVIM_PACKAGE_MANAGER_HOME"
# else
# 	echo "Getting package manager, installing to $NVIM_PACKAGE_MANAGER_HOME"
#        git clone --depth 1 https://github.com/wbthomason/packer.nvim \
#		"$NVIM_PACKAGE_MANAGER_HOME"
#fi

