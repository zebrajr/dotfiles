# neovim config files
A neovim configuration ready to go.

It will bootstrap on it's own on first launch as long as you have:
- **Required:** `neovim 0.10+`
- Recommended: `nodejs` & `npm` - needed for some LSP

If just starting / want to learn vim motions and not vim, the IDE / the LSP is configured in vscode and you need to get things done **now**, you can still use it, since it will change keymaps and other QoL changes for VSCode if the [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) plugin is installed.

## Structure
- `init.lua` : the main neovim loader
- `lua/` : where everything is organized
    - `configs/` : where configuration files for treesitter, lsp servers and others live
    - `plugins/` : where each individual plugin is configured. The directory will be autoloaded and autoinstalled
    - `themes/` : where the themes live. The directory will be autoloaded and autoinstalled
    - `user/` : the main self for neovim - will load keymaps and the plugin manager
    - `vscode/`: keymaps and configs that will be used if neovim is called from vscode
    - `editor_settings.lua` - configuration for neovim (the IDE) settings
    - `leaders.lua` - remaps the leader keys


## Plugins
- [Lazy Plugin Manager](https://github.com/folke/lazy.nvi)
    - [Telescope](https://github.com/nvim-telescope) - The Fuzzy Finder
    - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - The Parser / Syntax Helper
    - [Treesitter-Context](https://github.com/nvim-treesitter/nvim-treesitter-context) - Context for Nested Code
    - [Harpoon](https://github.com/ThePrimeagen/harpoon) - Making navigate between 2-4 files easier
    - [mason](https://github.com/williamboman/mason.nvim) - Package Manager for LSP Servers
        - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) - Making LSP Installation Easier
        - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Quickstart configs for nvim LSP
        - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
        - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - nvim-cmp source for builtin LSP client
    - [LSP Config](https://github.com/neovim/nvim-lspconfig) - NVIM LSP
    - [UndoTree](https://github.com/mbbill/undotree) - Undo History Visualizer
    - [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git Wrapper
    - [fidget](https://github.com/j-hui/fidget.nvim) - Notification & Messages
