vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Options
-- See `:help vim.opt`

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.showmode = false

-- Preview substitutions
vim.opt.inccommand = "split"

-- Sync OS & nvim clipboard
vim.opt.clipboard = "unnamedplus"

-- Use 4 spaces to insert a <TAB>
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.smartindent = true

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Configure split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 42

-- No backup file is kept after overwriting a file
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

-- Color columns for line length
vim.opt.colorcolumn = "80"
