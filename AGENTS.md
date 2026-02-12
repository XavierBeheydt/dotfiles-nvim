# AGENTS.md: Agent Coding Guide for Neovim Lua Repos

**For all contributors—human and agent.**

---

## Agent Conduct
- Be clear, atomic, and helpful. Prioritize readable, well-documented changes.
- Run `stylua .` before every commit.
- Do not commit secrets or user-specific data.

## Build/Lint/Test
- Format with: `stylua .`
- Check load: `nvim --headless "+luafile %" +q lua/plugins/opencode.lua`
- No additional tests unless present.

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
    -- Copyright (c) <year> <author> <email>
    -- License: <SPDX id or license name>  -- if LICENSE exists
    -- Purpose: (brief file description)
    -- Docs:
    --   - https://github.com/foo/bar
    --   - https://neovim.io/
- See reference links for SPDX identifiers.

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
---

## References
- Luanti Lua Code Style Guidelines: https://docs.luanti.org/for-engine-devs/lua-code-style-guidelines/
- Stylua: https://github.com/JohnnyMorganz/StyLua
- Neovim Lua Guide: https://github.com/nanotee/nvim-lua-guide
- Neovim: https://neovim.io/
- opencode.ai: https://opencode.ai/docs/

---

## 📚 Reference Documentation Policy
- **Any external reference URLs (e.g., "Docs" sections, plugin docs, API links, or other URLs) that appear in `.lua` file comments MUST be included in the `README.md` under the "Resources & References" section.**
- This ensures code/documentation synchronicity, helps onboard new users, and centralizes all relevant resources for easier discovery.
- Review and update the reference list in the README whenever dependencies, plugins, or config-linked resources change.

---
**Follow these rules before every contribution.**
