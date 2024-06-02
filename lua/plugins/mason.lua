local M = {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "rust_analyzer", "pylsp", "gopls"},
        })
        local lspconfig = require("lspconfig")
        lspconfig['rust_analyzer'].setup {}
        lspconfig['lua_ls'].setup {}
        lspconfig['pylsp'].setup {}
        lspconfig['gopls'].setup {}
    end,
}

return M
