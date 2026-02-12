-- nvim-tree.lua plugins configuration
-- Docs:
--   - https://github.com/nvim-tree/nvim-tree.lua

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "℗",
          info = "ℹ",
          warning = "⚠",
          error = "✘",
        },
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true
          }
        },
      },
    })

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Keybindings for nvim-tree
    vim.keymap.set("n", "<C-h>", "<cmd>NvimTreeToggle<CR>", { silent = true })
  end,
}
