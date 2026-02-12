-- Pyright LSP configuration
-- Docs: 
--	- https://github.com/microsoft/pyright
--	- https://microsoft.github.io/pyright/#/

return {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    '.git',
  },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = 'basic', -- or 'strict'
      },
    },
  },
}
