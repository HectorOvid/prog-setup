#!/bin/bash

echo Configuring in $SHELL

git config --global user.name "Tobias Sommer"
git config --global user.email "tobias.sommer.dev@mailbox.org"
git config --global color.ui auto

# set nvim as editor :D via alias
git config --global core.editor "vim"

git config --global init.defaultBranch main

# line endings:
### https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings
### https://stackoverflow.com/questions/2517190/how-do-i-force-git-to-use-lf-instead-of-crlf-under-windows
# > show: git config --get-all core.autocrlf
git config --global core.autocrlf false
git config --global core.eol lf



# Signing commits:
## Um nicht bei jedem commit/tag -S angeben zu müssen, können signierte commits und tags in der git config standardmäßig aktiviert werden:
#># git config <--global|...> commit.gpgsign true
#># git config <--global|...> tag.gpgsign true
