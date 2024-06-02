local M = {
{
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
        { "<leader>r", ":MarkdownPreviewToggle<CR>", desc = "Markdown Preview Toggle" },
    },
},
    {
        ft = {
            "markdown"
        },
        "dhruvasagar/vim-table-mode",
    },
}

return M
