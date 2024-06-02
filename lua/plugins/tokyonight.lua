local M = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    config = function()
        require("lualine").setup({
            style = "moon",
            transparent = true,
            terminal_colors = true,
        })
    end,
}

return M
