print("Hectorovids Plugins init, setting up all the small mini plugins")

return {
	-- prettier undo visualization
	{
		"mbbill/undotree",

		keys = {
			{
				"<leader>u",
				":UndotreeToggle<cr>",
				mode = "n",
				desc = "Toggling Undootree",
				-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
			},
		},
	},

	-- show diagnostics, errors and jump in between them
	{
		"folke/trouble.nvim",
		-- opts will be merged with the parent spec
		opts = { use_diagnostic_signs = true },
	},

	-- TODO consider plugins:
	-- -- "tpope/vim-fugitive"
	-- -- "folke/zen-mode"
	-- -- "laytan/cloak"
}
