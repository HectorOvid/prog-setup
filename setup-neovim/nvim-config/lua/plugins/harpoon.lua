return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config = function()
			require("harpoon"):setup()
		end,
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
