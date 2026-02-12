-- Copyright (c) 2026 Xavier Beheydt <xavier.beheydt@gmail.com>
-- lua/plugins/nvim-treesitter.lua
--
-- TreeSitter configuration
-- Docs:
--   - https://neovim.io/
--   - https://neovim.io/doc/user/treesitter.html
--   - https://github.com/nvim-treesitter/nvim-treesitter

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  ensure_installed = {
    'javacript', 'json',
    'lua',
    'python',
    'c', 'cpp',
    'vim', 'vimdoc'
  },
  auto_install = false,
  highlight = { enable = true, additional_vim_regex_highlighting = false },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-n>",
      node_incremental = "<C-n>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-m>",
    },
  },
}
