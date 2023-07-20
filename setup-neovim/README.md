-- >  initial setup : Primeagen: 0 to LSP : Neovim RC from scratch
NOTE: only works for nvim v0.9.+



Quick intro: neovim.io & Fireship youtube 100 seconds of Neovim :)




neovim is a fork of vim

it allows its scritp written in both native 'vim script' as well as in Lua :D

has a build int 

LSP Client := Language Server Protocoll
=> used for code autocompletion !



has a terminal emulator

cool plugins:

- telescope: fuzzy finder to find files


run with nvim


customization via either:
~/.config/nvim/init.vim
~/.config/nvim/init.lua

probably best to break the configuration down:

Example:

nvim/
----/after
----/ftplugin
----/lua
----|---/myluamodule.lua
----|---/other_modules/init.lua
----/pack
----/plugin
----/syntax
----init.lua


PackageManager, e.g. PACKER

packages:

colortheme:
{
  return require('packer').startup(function(use)
     use 'navarasu/onedark.vim'
     ...
  use)
}
lsp server: ---
highlighting: treesitter
moving in direcotories: nvim tree
finding files: telescope


## CONFIG

Where to put nvim config folder?
open nvim
command:
:h rtp

Neovim is going to look at the first position: XDG_CONFIG_HOME


## Commands

### :so

sources the current file, e.g. to update configuations to take effect
