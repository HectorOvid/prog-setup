function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
	-- -- NICE LOOK
	-- add gruvbox
	{
		"ellisonleao/gruvbox.nvim",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function() 
			vim.cmd("colorscheme rose-pine")
			ColorMyPencils()
		end
	},

	-- Configure LazyVim to load color scheme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "rose-pine",
		},
	},
}
