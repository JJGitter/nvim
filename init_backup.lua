vim.opt.termguicolors = true
vim.cmd("packadd gruvbox.nvim")

-- Configure Gruvbox
require("gruvbox").setup({
  terminal_colors = true, -- Use Gruvbox colors in terminal
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  contrast = "hard", -- Options: "soft", "medium", "hard"
  overrides = {}, -- Custom overrides (optional)
})

-- Apply the color scheme
vim.cmd("colorscheme gruvbox")

-- Set leader key
vim.g.mapleader = " "

-- Enable line numbers and set them to relative
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.syntax = "on"      -- Enable syntax highlighting

