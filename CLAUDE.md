# Neovim Config

## Structure

```
init.lua                        -- Bootstrap lazy.nvim, load settings + mappings
lua/
  plugins/init.lua              -- Plugin list with lazy.nvim specs and dependencies
  settings/init.lua             -- Vim options (tabs, search, line numbers, etc.)
  mappings/init.lua             -- Keymaps (leader key, telescope, splits, tabs, etc.)
  lsp-config/init.lua           -- LSP server configs using native vim.lsp.config API
  cmp-config/init.lua           -- Completion setup (nvim-cmp + sources)
  telescope-config/init.lua     -- Telescope picker settings
  tree-sitter-config/init.lua   -- Treesitter-context setup
  nvim-tree-config/init.lua     -- File explorer setup
  formatter-config/init.lua     -- Code formatter setup (prettierd, rustfmt, gofmt)
  snippets/init.lua             -- LuaSnip + friendly-snippets loader
  nvim-autopairs-config/init.lua
  comment-toggle-config/init.lua
  colors/init.lua               -- Colorscheme (tokyonight)
  copilot/init.lua              -- GitHub Copilot settings
```

Each plugin's config callback in `plugins/init.lua` calls `require('<config-dir>')` to keep setup logic in separate files.

## Plugin Manager: lazy.nvim

- Add plugins to `lua/plugins/init.lua`
- `:Lazy` opens the management UI
- `:Lazy install` installs missing plugins
- `:Lazy update` updates all plugins
- `:Lazy sync` install + update + clean removed
- Plugins auto-install on startup

## LSP Server Manager: Mason

- `:Mason` opens the management UI
- `:MasonInstall <server>` installs a language server
- LSP servers are configured in `lua/lsp-config/init.lua` using the native `vim.lsp.config[]` + `vim.lsp.enable()` API (nvim 0.12+)
- Shared config (capabilities, root_markers) is set via `vim.lsp.config('*', ...)`

## Adding a New LSP Server

1. `:MasonInstall <server-name>`
2. Optionally add server-specific config in `lua/lsp-config/init.lua`
3. Add the server name to the `vim.lsp.enable()` list
