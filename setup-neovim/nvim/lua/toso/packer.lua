function ConfigureRosePine()
  require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'moon',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		background_nc = '_experimental_nc',
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Whether or not highlight_groups optios should change only only update
	-- the settings they touch or should reset the entire highlight_group.
	respect_default_highlight_groups = true,

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipe
	highlight_groups = {
		ColorColumn = { bg = 'rose' },

		-- Blend colours against the "base" background
		CursorLine = { bg = 'foam', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
	}
  })
end


-- See: https://github.com/wbthomason/packer.nvim
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- searching files etc.
  use {
    	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- font & colors
  use({ 
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		ConfigureRosePine()
  		vim.cmd('colorscheme rose-pine')
  	  end
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  -- to get an AST of all the keywords in source code files (for plugin development e.g.) use treesitter playground!

end)


-- To run package manager window do
-- :PackerSync
--

