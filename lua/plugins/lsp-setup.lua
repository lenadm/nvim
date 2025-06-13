require('mason').setup()
require('mason-lspconfig').setup()

local servers = {
    lua_ls = {
        Lua = {
            diagnostics = { disable = {'missing-fields'} },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
        },
    },
}

vim.lsp.enable('glsl_analyzer')

require('neodev').setup()

require('mason-lspconfig').setup {
    ensure_installed = vim.tbl_keys(servers),
}
