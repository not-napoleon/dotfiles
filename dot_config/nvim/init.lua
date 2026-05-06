-- Rewritten in 2025 to use the nvim native plugin manager

-- vim: ts=2 sts=2 sw=2 et

-- TODO:
--   [ ] configure feline
--   [ ] set up LSP for python (at least)
--   [ ] Treesitter? 
--   [ ] nvim-cmp?

require("config.options")



-- set leader key to backslash
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'


-- plugins
require("plugins.easy_motion")
require("plugins.vim_rest_console")
require("plugins.feline")
require("plugins.vim_surround")
require("plugins.catppuccin")

