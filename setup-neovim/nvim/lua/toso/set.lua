-- SETTINGS
--
-- insert cursor is the same as the others
-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

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

vim.opt.textwidth = 120
vim.opt.colorcolumn = "100"

vim.g.mapleader = " "
