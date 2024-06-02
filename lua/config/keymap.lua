local set = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Change foucs between windows 
set({'n','i'}, '<C-h>', '<Esc><C-w>h', opts)
set({'n','i'}, '<C-j>', '<Esc><C-w>j', opts)
set({'n','i'}, '<C-k>', '<Esc><C-w>k', opts)
set({'n','i'}, '<C-l>', '<Esc><C-w>l', opts)
set({'n', 'i', 'v'}, '<C-s>', '<Esc>:w<CR>', opts)
-- others
set({'n', 'i', 'v'}, '<C-q>', '<Esc>:q<CR>', opts)
set({'n', 'i', 'v'}, '<C-Q>', '<Esc>:qa<CR>', opts)
set({'n', 'i', 'v'}, '<C-a>', '<Esc>gg<S-v>G', opts)
set({'v'}, '<A-c>', '"+y"', opts)
set({'n', 'i', 'v'}, '<A-v>','<ESC>"+p', opts)
