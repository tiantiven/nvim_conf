local M = {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        -- snippets
        'SirVer/ultisnips',
        'quangnguyen30192/cmp-nvim-ultisnips',
    },
    config = function()
        local cmp = require 'cmp'

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["UltiSnips#Anon"](args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
             mapping = cmp.mapping.preset.insert({
                  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                  ['<C-f>'] = cmp.mapping.scroll_docs(4),
                  ['<C-c>'] = cmp.mapping.complete(),
                  ['<C-e>'] = cmp.mapping.abort(),
                  ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                  { name = 'nvim_lsp' },
                  { name = 'ultisnips' },
                  { name = 'buffer' },
                }),
              })

    end,
}

return M
