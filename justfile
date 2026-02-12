# Copyright (c) 2026 Xavier Beheydt xavier.beheydt@gmail.com
# Purpose: Helper tasks for dotfiles setup and management
# Docs:
#   - https://just.systems/man/en/
#
# Helper for installing dotfiles dependencies (lua, luarocks, stylua)
# Usage: just install-deps


# install-deps: Installs all dotfiles-related dependencies using the detected package manager.
install-deps:
    if command -v apt >/dev/null; then \
        echo "apt support not implemented yet"; \
        exit 1; \
    elif command -v brew >/dev/null; then \
        echo "brew support not implemented yet"; \
        exit 1; \
    elif command -v pacman >/dev/null; then \
        sudo pacman -Sy --noconfirm lua luarocks stylua; \
    else \
        echo "Unsupported package manager. Please install lua, luarocks, and stylua manually."; \
        exit 1; \
    fi
