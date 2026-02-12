-- zen-mode.nvim plugins configuration
-- Docs:
--   - https://github.com/folke/zen-mode.nvim

return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  keys = {
    { "<C-M-z>", "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" },
  },
  opts = {
    window = { width = 120, backdrop = 0.95 },
    -- FIXME: not run
    alacritty = {
      enabled = true,
      font = "14", -- font size
    },
    -- FIXME: not run
    tmux = { enable = true },

    -- Zoom the current tmux pane when entering Zen mode and restore on exit.
    -- Requires Neovim to be running inside tmux ($TMUX).
    on_open = function()
      if vim.env.TMUX == nil then
        return
      end

      local function tmux_is_zoomed()
        local out = vim.fn.systemlist('tmux display -p "#{window_zoomed_flag}" 2>/dev/null')
        return out[1] == "1"
      end

      local function tmux_toggle_zoom()
        vim.fn.jobstart({ "tmux", "resize-pane", "-Z" })
      end

      -- remember previous zoom state in a global to survive callback scope
      vim.g.tmux_zen_was_zoomed = tmux_is_zoomed()
      if not vim.g.tmux_zen_was_zoomed then
        tmux_toggle_zoom()
      end
    end,

    on_close = function()
      if vim.env.TMUX == nil then
        return
      end
      if vim.g.tmux_zen_was_zoomed == nil then
        return
      end

      local out = vim.fn.systemlist('tmux display -p "#{window_zoomed_flag}" 2>/dev/null')
      local now = out[1] == "1"

      -- if we zoomed on open (was not zoomed before, but is now), unzoom
      if not vim.g.tmux_zen_was_zoomed and now then
        vim.fn.jobstart({ "tmux", "resize-pane", "-Z" })
      end

      vim.g.tmux_zen_was_zoomed = nil
    end,
  },
}
