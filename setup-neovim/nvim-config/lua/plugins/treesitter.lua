-- basic highlighting etc.
--
-- -- -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md
-- -- -- NOTE: requires a c compiler in path and libstdc++
return {
	-- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
	-- would overwrite `ensure_installed` with the new value.
	-- If you'd rather extend the default config, use the code below instead:
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or "all" (the five listed parsers should always be installed)
				ensure_installed = {
					"bash",
					"c",
					"go",
					"html",
					"java",
					"javascript",
					"json",
					"kotlin",
					"lua",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"scala",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"yaml",
					"typescript",
				},

				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,

				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,

				---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
				-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

				highlight = {
					enable = true,

					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = false,
				},

				indent = { enable = true },
			})
		end,
	},
}
