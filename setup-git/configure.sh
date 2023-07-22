#!/bin/bash

echo Configuring in $SHELL

git config --global user.name "Tobias Sommer"
git config --global user.email "tobias.sommer.dev@mailbox.org"
git config --global color.ui auto

# set nvim as editor :D via alias
git config --global core.editor "vim"
