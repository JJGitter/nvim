require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

-- Add the following lines to set up Mason and LSP
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "groovyls" }, -- Add the LSP servers you need
})

local lspconfig = require("lspconfig")

-- Configure LSP servers
lspconfig.lua_ls.setup {}
lspconfig.clangd.setup {}
lspconfig.groovyls.setup {}


vim.opt.number = true
vim.opt.relativenumber = true
