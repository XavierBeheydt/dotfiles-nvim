-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- TODO: Review and standardize editor settings
vim.opt.splitright = true -- Open vertical splits to the right
vim.opt.splitbelow = true -- Open horizontal splits below
vim.opt.wrap = false -- Disable line wrapping
vim.opt.number = true -- Show line numbers
vim.opt.tabstop = 4 -- Set tab width to 4 spaces
vim.opt.shiftwidth = 4 -- Set indent width to 4 spaces
vim.opt.softtabstop = 4 -- Set soft tab width to 4 spaces

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")

-- Clear search highlighting by pressing Escape twice
vim.keymap.set({ "n", "v" }, "<Esc><Esc>", "<cmd>nohlsearch<CR>", { silent = true })
