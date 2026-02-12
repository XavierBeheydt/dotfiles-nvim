-- Ty LSP configuration
-- Docs:
--	- https://docs.astral.sh/ty/editors/#neovim

return {
	cmd = { "ty", "server" },
	-- Project detection
	root_markers = {
		"pyproject.toml",
		"ruff.toml",
		".ruff.toml",
		".git",
	},
	settings = {
		ty = {
			-- ty language server settings go here
		},
	},
}
