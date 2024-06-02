local M = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    cmd = "Telescope",
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", desc = "find files" },
        { "<leader>gf", ":Telescope live_grep<CR>", desc = "live grep" },
        { "<leader>rs", ":Telescope resume<CR>", desc = "resume" },
        { "<leader>of", ":Telescope oldfiles<CR>", desc = "old files" },
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
    }
}

return M
