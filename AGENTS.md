# AGENTS.md: Agent Coding Guide for Neovim Lua Repos

**For all contributors—human and agent.**

---

## Agent Conduct
- Be clear, atomic, and helpful. Prioritize readable, well-documented changes.
- Run `stylua .` before every commit.
- Do not commit secrets or user-specific data.
- **Never commit code without explicit user confirmation.**

## Build/Lint/Test
- Format with: `stylua .`
- Check load: `nvim --headless "+luafile %" +q lua/plugins/opencode.lua`
- No additional tests unless present.

## just & justfile
- Project task runner for this repository. See [.agents/JUSTFILE.md](.agents/JUSTFILE.md) for full justfile conventions, usage, and policy.
- For more, read the [just official manual](https://just.systems/man/en/introduction.html).

## Lua: Coding Standards
All Lua-specific contributor guidance now lives in [.agents/LUA.md](.agents/LUA.md). Please consult that document for copyright headers, formatting & style, imports, error handling, and public API comments.

---

## References
- See .agents/README.md for full, up-to-date references for all languages/tools.
- opencode.ai: https://opencode.ai/docs/

---

## 📚 Reference Documentation Policy
- **Any external reference URLs (e.g., "Docs" sections, plugin docs, API links, or other URLs) that appear in `.lua` file comments MUST be included in the `README.md` under the "Resources & References" section.**
- This ensures code/documentation synchronicity, helps onboard new users, and centralizes all relevant resources for easier discovery.
- Review and update the reference list in the README whenever dependencies, plugins, or config-linked resources change.

---
**Follow these rules before every contribution.**
