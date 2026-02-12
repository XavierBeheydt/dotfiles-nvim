# Copyright (c) 2026 Xavier Beheydt xavier.beheydt@gmail.com
# Purpose: Helper tasks for dotfiles setup and management
# Docs:
#   - https://just.systems/man/en/
#
# Helper for installing dotfiles dependencies (lua, luarocks, stylua)
# Usage: just install-deps


[group("install")]
[linux]
[doc("Installs all dotfiles-related dependencies for the project.")]
[confirm("Will install Lua, Luarocks, and Stylua using your OS package manager. Continue?")]
install-deps:
    if command -v apt >/dev/null; then \
        sudo apt update && sudo apt install -y lua5.4 luarocks stylua; \
    elif command -v apk >/dev/null; then \
        sudo apk add lua5.4 luarocks stylua; \
    elif command -v pacman >/dev/null; then \
        sudo pacman -Sy --noconfirm lua luarocks stylua; \
    else \
        echo "No supported package manager (apt, apk, pacman) found. Please install lua, luarocks, and stylua manually."; \
        exit 1; \
    fi

[group("install")]
[macos]
[doc("Installs Lua, Luarocks, Stylua on macOS. Requires Homebrew.")]
[confirm("Will install Lua, Luarocks, and Stylua using your OS package manager. Continue?")]
install-deps:
    if command -v brew >/dev/null; then \
        brew install lua luarocks stylua; \
    else \
        echo "Homebrew not found. Please install Homebrew and try again."; \
        exit 1; \
    fi

[group("install")]
[windows]
[doc("Manual install required: install Lua, Luarocks, and Stylua. See https://just.systems/man/en/ for help.")]
[confirm("Will install Lua, Luarocks, and Stylua using your OS package manager. Continue?")]
install-deps:
	winget install --id=DEVCOM.Lua -e



project_name:="dotfiles-nvim"

# get-task: Show all tasks for this project using Taskwarrior.
[group("tasks")]
get-task:
    task project:{{project_name}}

alias task := get-task

# add-task desc: Add a new Taskwarrior task to this project (provide description as `desc`).
[group("tasks")]
add-task desc:
    task project:{{project_name}} add {{desc}}
