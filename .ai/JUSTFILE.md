# .ai/JUSTFILE.md: justfile Usage/Conventions

This document contains all conventions, policies, and usage notes for the justfile in this repository.

## Purpose
- The justfile provides simple, repeatable project-specific commands (like dependency installation and project task automation).
- It is similar to a Makefile but simpler, cross-platform, and specialized for command running (not building).

## Usage
- Run `just -l` to list all available tasks/recipes.
- Read comments in the justfile for usage guidance and OS-specific behaviors.
- Example: `just install-deps` will install Lua, Luarocks, and Stylua for you.
- To add/modify recipes, follow the documented structure and keep inline comments clear.

## Reference
- Official documentation: https://just.systems/man/en/introduction.html

## Policy
- For cross-platform compatibility, keep recipes generic unless platform specifics are needed.
- Use explicit groups and comments for OS-dependent tasks.
- Use [doc(...)] annotations for recipe descriptions and [confirm(...)] for user prompts as demonstrated.
- Any new recipe must be accompanied by usage documentation via comments or doc attributes.

## See also
Your justfile should always refer to this document for policy and maintenance guidance.
