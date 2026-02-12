# .ai/LUA.md: Lua Coding Standards and Rules

**This document contains all conventions, requirements, and automation rules for Lua code in this repository.**

## Copyright & License Headers
- Every `.lua` file must begin with a copyright header.
- Automate author/year from git config. If LICENSE exists, add a License line using its SPDX or identifier.
    - Format:
      ```lua
      -- Copyright (c) <year> <author> <email>
      -- License: <SPDX id or license name>  -- if LICENSE exists
      -- Purpose: (brief file description)
      ```
- Insert/repair header if missing within first 10 lines.
- If documentation links (e.g. plugin docs, official references, usage guides) are provided by the user or found during implementation, always ask the user if they want these added as a "Docs:" section immediately following the copyright/license/purpose header.
    - Example:
      ```lua
      -- Copyright (c) <year> <author> <email>
      -- License: <SPDX id or license name>  -- if LICENSE exists
      -- Purpose: (brief file description)
      -- Docs:
      --   - https://github.com/foo/bar
      --   - https://neovim.io/
      ```
- See reference links for SPDX identifiers.

## Workflow note
- If you add external `Docs:` links to a `.lua` file header, also update the project `README.md` under "Resources & References" so repository-level references remain synchronized.

## Formatting & Style
- Indent: 4 spaces. No tabs or trailing whitespace.
- Strings: use double quotes by default.
- Variable/function/file names: lowercase_with_underscores (except constructors interfacing with upstream APIs).
- Line length: 80 chars (max 90 if absolutely needed).
- No semicolons; one statement per line.

## Imports & Requires
- Local `require` at top; avoid redundant requires in same scope.

## Error Handling & Comments
- Idioms: `if not result then return err end`. Fail gracefully, log (`vim.notify`) on user-facing errors.
- Comments: brief, capitalized, space after dashes. Use LuaDoc for public APIs.

## External references (also indexed in .ai/README.md)
- Luanti Lua Code Style Guidelines: https://docs.luanti.org/for-engine-devs/lua-code-style-guidelines/
- Stylua: https://github.com/JohnnyMorganz/StyLua
- Neovim Lua Guide: https://github.com/nanotee/nvim-lua-guide
- Neovim: https://neovim.io/
- opencode.ai: https://opencode.ai/docs/
