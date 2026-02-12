# NeoVim Dotfiles

A modern, modular, and fully-featured Neovim configuration written in Lua. Includes plugin management via [lazy.nvim](https://github.com/folke/lazy.nvim), Python language support (LSP: ruff, ty, pyright), Treesitter, custom editor options, and curated plugins for next-level productivity.

## Features

- **Modular Lua config**: Easy-to-maintain and extend
- **Plugin management**: Powered by [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Python development**: Preconfigured ruff, ty, pyright language servers
- **Rich keybindings**: Modern, ergonomic shortcuts, easily adaptable
- **Custom plugins**: Opinionated setup for `opencode.nvim`, Telescope, Treesitter, Zen Mode, Trouble, Everforest theme, and more
- **Quality of life**: Sensible defaults for splits, clipboard, number display, and tabbing

## Quick Start

1. **Clone** this repository to your Neovim config directory:
    ```sh
    git clone https://github.com/XavierBeheydt/dotfiles-nvim ~/.config/nvim
    ```

2. **Start Neovim** (v0.11.6 or later recommended):
    ```sh
    nvim
    ```

3. **Plugins will auto-install** on first launch. If any prompts arise regarding [lazy.nvim](https://github.com/folke/lazy.nvim), follow the instructions.

4. **(Optional for fresh setups)**: Install all required dependencies via [`just`](https://just.systems/man/en/) (Pacman/Arch recommended)
    ```sh
    just install-deps
    ```
    > This will install all dependencies needed for the dotfiles (if using Arch/Pacman). If using `apt` or `brew`, see the justfile for implementation status.

## Directory Structure

```
~/.config/nvim/
├── init.lua                   # Main Neovim entrypoint
├── .gitignore
└── lua/
    ├── config/
    │   ├── common.lua         # Core settings, keymaps, options
    │   ├── terminal.lua       # Terminal integration (WIP)
    │   ├── lazy.lua           # Plugin management (lazy.nvim)
    │   └── treesitter.lua     # Treesitter configuration
    ├── lsp/
    │   └── python/
    │       ├── pyright.lua
    │       ├── ruff.lua
    │       └── ty.lua
    └── plugins/               # Individual plugin setups
        └── ...
```

## Usage
- Launch Neovim. Plugins will install automatically via lazy.nvim.
- Keybindings for frequently-used actions are set up in Lua. (See the `init.lua` and plugin config files for details.)
- Use the `<Space>` key as the leader.
- Toggle line wrap: `<A-z>`
- Search and run plugin actions via Telescope or Opencode.
- Python LSP servers (ruff, ty, pyright) are enabled by default for `.py` files.

## Customization
- Tweak options and keybindings in `lua/config/common.lua`
- Add/remove plugins in `lua/config/lazy.lua` and the `plugins/` directory
- Update LSP settings in the `lua/lsp/` and `init.lua`
- Theme can be changed in the plugins section (`everforest` by default)

## Resources & References
- [Neovim official docs](https://neovim.io/)
- [lazy.nvim Documentation](https://lazy.folke.io/)
- [opencode.nvim](https://github.com/nickjvandyke/opencode.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [Neovim Treesitter User Docs](https://neovim.io/doc/user/treesitter.html)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LuaSnip: friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [everforest.nvim](https://github.com/sainnhe/everforest)
- [Ruff - Neovim setup guide](https://docs.astral.sh/ruff/editors/setup/#neovim)
- [Ruff - Editor settings](https://docs.astral.sh/ruff/editors/settings/)
- [Ty - Neovim setup guide](https://docs.astral.sh/ty/editors/#neovim)
- [Pyright](https://github.com/microsoft/pyright)
- [Pyright User Guide](https://microsoft.github.io/pyright/#/)

## Author
Xavier Beheydt (<xavier.beheydt@gmail.com>)

---
Feel free to fork, improve, and submit issues or PRs!
