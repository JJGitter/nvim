require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

-- Add the following lines to set up Mason and LSP
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "groovyls", "pyright" }, -- Add the LSP servers you need
})

local lspconfig = require("lspconfig")

-- Configure LSP servers
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        maxPreload = 2000,  -- Increase the max preload files
        preloadFileSize = 1000000,  -- Increase the file size limit
      },
      diagnostics = {
        globals = { "wait", "printmsg", "printcmsg", "stop" },  -- Add any custom globals if needed
      }
    }
  }
}
lspconfig.clangd.setup {}
lspconfig.groovyls.setup {}
lspconfig.pyright.setup {}


vim.opt.number = true
vim.opt.relativenumber = true
vim.o.ignorecase = true
vim.o.smartcase = true -- Do not ignore case if the search pattern contains uppercase characters
vim.o.incsearch = true -- Show search matches as you type

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Sync nvim clipboard with system clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
