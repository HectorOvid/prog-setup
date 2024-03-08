-- -- print("Hectorovids Plugins init, setting up all the small mini plugins")

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
		config = function()
			local trouble = require("trouble")
			trouble.setup({
				use_diagnostic_signs = true,
			})

			vim.keymap.set("n", "<leader>tt", function()
				trouble.toggle()
			end)

			vim.keymap.set("n", "<leader>tn", function()
				trouble.next({ skip_groups = true, jump = true })
			end)

			vim.keymap.set("n", "<leader>tp", function()
				trouble.previous({ skip_groups = true, jump = true })
			end)
		end,
	},

	-- disbling flash search keymap to have "s" insert
	{
		"folke/flash.nvim",
		keys = {
			-- disable the default flash keymap
			{ "s", mode = { "n", "x", "o" }, false },
		},
	},

	-- opens the current buffer in a new full-screen floating window
	{
		-- open zen window with `:ZenMode`
		-- close zen window with `:quit` or `:close`
		"folke/zen-mode.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	{
		-- Hide non-active code segements
		-- toggle `:Twilight`
		-- enable `:TwilightEnable`
		-- disable `:TwilightDisable`
		"folke/twilight.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},

	{
		-- create pairs of parenthesis or ", however we skip this for now
		"echasnovski/mini.pairs",
		enabled = false,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>fe",
				function()
					require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
				end,
				desc = "Explorer NeoTree (cwd dir)",
			},
			{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd dir)", remap = true },
		},
	},

	--
	--
	--
	-- -- have a nerd font and use it in terminal
	-- neotree
	--
	-- TODO consider plugins:
	-- -- "tpope/vim-fugitive"
	-- -- "laytan/cloak" -- hide content of files (e.g. by extension to avoid doxing yourself)
	-- folke/todo-comments.nvim
	--
	-- EHER NICHT, not sure ob really worth it ... with harpoon + telescope ...:
	-- "oil.nvim" -- edit pwd
}
