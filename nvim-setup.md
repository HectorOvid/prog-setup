# Lazyvim setup overview

## Font
-> Font needs to be installed, for proper small icons in nvim

```
mdkir ~/.fonts
cd ~/.fonts
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/RobotoMono.zip
unzip RobotMono.zip
rm RobotoMono.zip
```




## Lazygit - git inside nvim

https://www.reddit.com/r/neovim/comments/fw56ge/lazygitvim_a_plugin_for_using_lazygit_in_neovim/


## LSP

Language Server Protocol via JsonRPC

Using mason as a package manager for lsp Server.
mason-lspconfig.nvim bridges the gap between mason and the actual lsp-config
lspconfig is the configuration of the actual lsps.

- https://github.com/williamboman/mason.nvim
- https://github.com/williamboman/mason-lspconfig.nvim
- https://github.com/neovim/nvim-lspconfig
