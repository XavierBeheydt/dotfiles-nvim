-- Ruff LSP configuration
-- Docs:
--	- https://docs.astral.sh/ruff/editors/setup/#neovim
--	- https://docs.astral.sh/ruff/editors/settings/

return {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	-- Project detection
	root_markers = {
		"pyproject.toml",
		"ruff.toml",
		".ruff.toml",
		".git",
	},
	settings = {},
}
