#!/usr/bin/bash

mkdir nvim

# echo Adding xdg env to .profile
# echo "export XDG_CONFIG_HOME=${PWD}" >> ~/.profile
# source ~/.profile



echo Creating configs for nvim
cd nvim
touch init.lua
echo "require(\"toso\")" >> init.lua
echo "print(\"Hi, initializing via lua :)\")" >> init.lua

mkdir lua
cd lua

mkdir toso
cd toso
touch init.lua
echo "print(\"Hi, TOSO was hjere\")" >> init.lua

touch remap.lua
echo "-- make it easy to open/close files " >> remap.lua
echo "vim.g.mapleader = \" \"" >> remap.lua

