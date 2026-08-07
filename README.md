# Neovim Configuration

My personal Neovim configuration using lazy.nvim for plugin management.

## Features

- Native Neovim 0.11+ LSP setup with autocompletion
- Nix-managed language servers and tooling
- Treesitter for syntax highlighting
- Telescope for fuzzy finding
- Gitsigns for inline git hunk workflows
- Native commenting and mini.nvim surround editing
- Harpoon for quick navigation
- Spell checking is intentionally disabled by default to avoid false positives on technical terms (`:setlocal spell` to enable per buffer, `:setlocal nospell` to disable).

## Review Navigation Cheat Sheet

- Files: `<leader>sf` find files, `<leader>sg` grep project, `<leader><leader>` switch buffers, `<leader>s/` grep open files
- Pinned files: `<leader>a1..4` assign Harpoon slots, `<leader>1..4` jump to pinned files
- Code graph: `gd` definition, `gr`/`grr` references, `gI`/`gri` implementations, `<leader>ds` document symbols, `K` hover docs
- Jump history: `<C-o>` back through jumps, `<C-i>` forward again
- In-file movement: `<leader>j` Flash jump, `<leader>J` Treesitter jump, `<leader>/` fuzzy search current buffer
- Git review: `[h` previous hunk, `]h` next hunk, `<leader>hp` preview hunk
- Review pattern: find the file, jump semantically, use the jumplist to unwind, and avoid repeated `h/j/k/l` browsing
- This config actively discourages spamming `h/j/k/l`, so the fast path is search + jump + history, not line-by-line crawling

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
    - `colors.lua` - Color scheme configuration
    - `completion.lua` - Autocompletion settings
    - `flash.lua` - Label-based navigation
    - `gitsigns.lua` - Git hunk signs and actions
    - `harpoon.lua` - Quick file navigation
    - `lsp.lua` - Native 0.11+ Language Server configuration
    - `lsp_signature.lua` - Function signature help
    - `lualine.lua` - Status line customization
    - `mini.lua` - Surround editing
    - `oil.lua` - Filesystem editing
    - `rust_owl.lua` - Visualize ownership and lifetimes in Rust for debugging and optimization
    - `telescope.lua` - Fuzzy finder configuration
    - `treesitter.lua` - Syntax highlighting
- `after/ftplugin/` - Filetype-specific settings
