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

require('neodev').setup()

require('mason-lspconfig').setup {
    ensure_installed = vim.tbl_keys(servers),
}

require("keymaps.lsp-keymap")
