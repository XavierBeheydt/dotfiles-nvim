-- everforest.nvim plugins configuration
-- Docs:
--   - https://github.com/sainnhe/everforest

return {
	"sainnhe/everforest",
	lazy = false,
	name = "everforest",
	priority = 1000,
	config = function()
		-- ensure background is set before loading the colorscheme
		vim.opt.background = "dark"
		vim.cmd([[colorscheme everforest]])
	end,
}
