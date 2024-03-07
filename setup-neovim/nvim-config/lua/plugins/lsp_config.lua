return {
  ------ LSP
  {
    -- package manager for LSP servers, DAP servers, linters and formatters
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "shfmt",
        -- "flake8",
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
  },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
  },
}

-- -- -- refers to the combining plugin of https://github.com/VonHeikemen/lsp-zero.nvim/tree/v2.x
-- -- local lsp = require('lsp-zero').preset("recommended")
-- --
-- -- -- If you want to install a language server for a particular file type
-- -- -- use the command :LspInstall.
-- -- -- And when the installation is done restart neovim.
-- --
-- -- local cmp = require('cmp')
-- -- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- -- local cmp_mappings = lsp.defaults.cmp_mappings({
-- --     -- moving inside completion suggestion list via:
-- --     ['C-p'] = cmp.mapping.select_prev_item(cmp_select),
-- --     ['C-n'] = cmp.mapping.select_next_item(cmp_select),
-- --     ['C-y'] = cmp.mapping.confirm({select = true}),
-- --     ["C-Space"] = cmp.mapping.complete(),
-- -- })
-- --
-- -- lsp.set_preferences({
-- --     -- deactivate sign icons, TODO figure out what they are :D
-- --     sign_icons = { }
-- -- })
-- --
-- -- lsp.setup_nvim_cmp({
-- --     mapping = cmp_mappings
-- --
-- -- })
-- --
-- -- -- this will be called on ANY buffer that has a LSP associated with it:
-- -- lsp.on_attach(function(client, bufnr)
-- --     -- print("LSP attaching ...")
-- --
-- --     -- see :help lsp-zero-keybindings
-- --     -- to learn the available actions
-- --     --
-- --     -- creating some key-combinations that only live while there is a LSP-buffer
-- --     local opts = { buffer=bufnr, remap = false}
-- --
-- --     -- normally this is Go_to_Definition
-- --     vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- --     vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- --     vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- --     vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
-- --     vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)
-- --     vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)
-- --     vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
-- --     vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
-- --     vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
-- --     vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- --
-- --     -- print("LSP attached :)")
-- -- end)
-- --
-- -- -- (Optional) Configure lua language server for neovim
-- -- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
-- --
-- -- lsp.setup()
