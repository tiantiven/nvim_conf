-- GUI Color
vim.cmd[[colorscheme vim]]
vim.g.truecolors = true
vim.o.termguicolors = true

vim.g.python3_host_prog="/usr/bin/python"
-- Line Number
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 4
vim.o.scrolloff = 7
vim.o.wrap = true

-- Tab
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Search
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- autochdir
vim.o.autochdir = true

-- fold
vim.o.modeline = true
vim.o.foldenable = true
vim.o.foldmethod = "indent"
