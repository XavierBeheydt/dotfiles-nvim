-- snippets.nvim plugin configuration
-- Docs:
--   - https://github.com/nickjvandyke/opencode.nvim
--   - https://github.com/rafamadriz/friendly-snippets
return {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      local lua_snippets_path = vim.fn.stdpath("config") .. "/snippets/lua"
      require("luasnip.loaders.from_lua").lazy_load({ paths = lua_snippets_path })
      -- local vscode_snippets_path = vim.fn.stdpath("config") .. "/snippets/vscode"
      -- require("luasnip.loaders.from_vscode").lazy_load({ paths = vscode_snippets_path })
      require("luasnip.loaders.from_vscode").lazy_load() -- to load snippets from friendly-snippets
      -- Keybindings
      local ls = require("luasnip")

      vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
      vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
      vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })

      vim.keymap.set({ "i", "s" }, "<C-E>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true })
    end
}
