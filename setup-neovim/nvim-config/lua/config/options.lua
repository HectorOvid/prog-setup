-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
-- SETTINGS
--
-- insert cursor is the same as the others
-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- FYI, alternatively could be done by:
-- -- vim.cmd("set tabstop=4")
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- this way undotree plugin can keep the history across differen vim sessions
-- that means you can undo even after closing vim and opening it up again :D
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- keeping things highlighted
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- add lines when scrolling (to not scroll with the very first or last line => better overview)
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
--
-- show matching braces
vim.opt.showmatch = true

vim.opt.updatetime = 50

-- number of ex commands to remember
vim.opt.history = 200

vim.opt.textwidth = 120
vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

-- do not hide backticks in markdown etc.
-- :h 'conceallevel'
vim.opt.conceallevel = 0
