-- Lazy.Nvim Installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Loading plugins
require("lazy").setup({
    -- UI
    require("plugins.tokyonight"),
    require("plugins.lualine"),
    require("plugins.bufferline"),
    require("plugins.alpha"),
    require("plugins.nvim-colorizer"),
    -- Explorer
    require("plugins.nvimtree"),
    --lsp
    require("plugins.mason"),
    require("plugins.comment"),
    --autocomplete
    require("plugins.autocomplete"),
    -- telescope
    require("plugins.telescope"),
    require("plugins.markdown"),
    require("plugins.autopair"),
    require("plugins.kiwi"),
    require("plugins.tablemode"),
    require("plugins.surround")
  })
