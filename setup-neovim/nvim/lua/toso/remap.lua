-- make it easy to open/close files 
vim.g.mapleader = " "

-- n := Normal Mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- use to move highlighted segments around oO:
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- when joining lines up, KEEP your current cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- window sliding but keep the cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when searching, keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste, without moving the deleted text into the register
-- keep pasting the same thing over and over :D
vim.keymap.set("x", "<leader>p", "\"_dP")


-- system register copy alternative
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete into void
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- leaving insert mode without polluting base registry
vim.keymap.set("i", "<C-c>", "<Esc>")


-- avoid pressing Q alltogether
vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- quickfix(?) navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- start replacing, with the current word under cursor as starting text
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "Y", "yg$")










































































