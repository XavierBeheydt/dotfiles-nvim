-- Copyright (c) 2026 Xavier Beheydt <xavier.beheydt@gmail.com>
-- Docs:
--   - https://neovim.io/
--   - https://github.com/nickjvandyke/opencode.nvim
--   - https://lazy.folke.io/

-- TODO: Review and organize configuration structure
require("config.common")

-- TODO: Enable terminal configuration once tested
require("config.terminal")

-- Initialize lazy.nvim plugin manager
require("config.lazy")

-- LSP Serveurs
vim.lsp.config('ruff', require('lsp.python.ruff'))
vim.lsp.config('ty', require('lsp.python.ty'))
vim.lsp.config('pyright', require('lsp.python.pyright'))
vim.lsp.enable({ 'ruff', 'ty', 'pyright'})

-- TreeSitter settings
require("config.treesitter")

-- TODO: Review keybinding for toggle wrap functionality
vim.api.nvim_set_keymap('n', '<A-z>', ':set wrap!<CR>', { noremap = true, silent = true })
