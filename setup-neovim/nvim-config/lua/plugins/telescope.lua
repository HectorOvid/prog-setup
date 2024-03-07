return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        -- mappings = {},
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}

-- -- local builtin = require('telescope.builtin')
-- -- -- space + P_roject F_iles
-- -- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- -- -- look only for git files:
-- -- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- --
-- -- -- space + P_roject S_earch
-- -- -- TODO() this needs ripgrep to be installed though!
-- -- vim.keymap.set('n', '<leader>ps', function()
-- -- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- -- end)
-- --
-- -- -- -- vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
-- -- -- -- vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
-- -- -- -- vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})