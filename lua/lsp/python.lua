local lspconfig = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig['pylsp'].setup {
    capabilities = capabilities,
}
