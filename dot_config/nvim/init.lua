-- Rewritten in 2025 to use the nvim native plugin manager
-- Modularized and updated for python development in 2026
--
-- References:
-- https://rubenhortas.github.io/posts/moden-neovim-ide-lua-guide-2026/

-- vim: ts=2 sts=2 sw=2 et

-- TODO:
--   [ ] Replace feline with lualine

-- plugins
require "plugins.easy_motion"
require "plugins.vim_rest_console"
require "plugins.vim_surround"
require "plugins.catppuccin"
require "plugins.treesitter"
require "plugins.lsp"
require "plugins.completions"
require "plugins.formatting"
require "plugins.telescope"
require "plugins.statusline"

-- General Config (after plugins, for keybindings to see them)
require "config.options"
require "config.keybindings"
