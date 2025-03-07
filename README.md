# Neovim Configuration

My personal Neovim configuration using lazy.nvim for plugin management.

## Features

- LSP support with autocompletion
- Treesitter for syntax highlighting
- Telescope for fuzzy finding
- Custom keymaps and settings
- Harpoon for quick navigation

## Structure

- `init.lua` - Main entry point
- `lua/cal/` - Core configuration
  - `autocmds.lua` - Autocommands
  - `lazy_init.lua` - Plugin manager setup
  - `options.lua` - Neovim options
  - `remap.lua` - Key mappings
  - `usercmds.lua` - User commands
  - `plugins/` - Plugin configurations
    - `autoformat.lua` - Automatic code formatting
    - `avante.lua` - Setup for LLM-augmented coding
    - `colors.lua` - Color scheme configuration
    - `completion.lua` - Autocompletion settings
    - `harpoon.lua` - Quick file navigation
    - `lsp.lua` - Language Server settings
    - `lsp_signature.lua` - Function signature help
    - `lualine.lua` - Status line customization
    - `rust_owl.lua` - Visualize ownership and lifetimes in Rust for debugging and optimization
    - `telescope.lua` - Fuzzy finder configuration
    - `treesitter.lua` - Syntax highlighting
- `after/` - Additional configuration
  - `ftplugin/` - Filetype-specific settings
  - `plugin/` - Post-plugin loading configuration
