-- Rewritten in 2025 to use the nvim native plugin manager

-- vim: ts=2 sts=2 sw=2 et

-- TODO:
--   [ ] configure feline
--   [ ] set up LSP for python (at least)
--   [ ] Treesitter? 

local opt = vim.opt

-- opt.encoding = "utf-8"
-- opt.fileencoding = "utf-8"

-- opt.hlsearch = false
-- opt.ignorecase = true
-- opt.smartcase = true

opt.cursorline = true
opt.number = true

-- opt.splitbelow = true
-- opt.splitright = true

-- opt.expandtab = true
-- opt.shiftwidth = 4
-- opt.shiftround = true
-- opt.tabstop = 4

-- opt.signcolumn = "yes"
-- opt.termguicolors = true

opt.undofile = true
opt.undolevels = 10000

-- opt.secure = true
-- opt.exrc = true

-- set leader key to backslash
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'


-- plugins
require("plugins.easy_motion")
require("plugins.vim_rest_console")
require("plugins.feline")
require("plugins.vim_surround")
require("plugins.catppuccin")

