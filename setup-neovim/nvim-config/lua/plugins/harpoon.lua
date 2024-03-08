return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup()

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():append()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<leader><C-j>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<leader><C-k>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<leader><C-l>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<leader><C-ö>", function()
				harpoon:list():select(4)
			end)
		end,
		opts = {
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		},
		dependenices = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}

-- -- vim.keymap.set("n", "<leader>a", mark.add_file)
-- -- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
-- --
-- -- vim.keymap.set("n", "<C-u>", function() ui.nav_file(1) end)
-- -- vim.keymap.set("n", "<C-i>", function() ui.nav_file(2) end)
-- -- vim.keymap.set("n", "<C-o>", function() ui.nav_file(3) end)
-- -- vim.keymap.set("n", "<C-p>", function() ui.nav_file(4) end)
-- -- vim.keymap.set("n", "<C-ü>", function() ui.nav_file(5) end)
