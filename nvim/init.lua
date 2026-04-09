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
vim.pack.add({
  "https://github.com/catppuccin/nvim",
  "https://github.com/tpope/vim-surround",
  "https://github.com/Famiu/feline.nvim",
  "https://github.com/easymotion/vim-easymotion",
  "https://github.com/diepm/vim-rest-console"

})

-- plugin configuration

-- Vim Rest Console
vim.g.vrc_elasticsearch_support = 1
vim.g.vrc_output_buffer_name = '__VRC_OUTPUT.json'
vim.g.vrc_response_default_content_type = 'json'
vim.g.vrc_auto_format_response_patterns = { json = "jq ." }


-- set colour scheme
vim.cmd.colorscheme "catppuccin"

-- Easy Motion
vim.keymap.set({'n', 'o', 'v'}, 'f', '<Plug>(easymotion-bd-fl)')
vim.keymap.set({'n', 'o', 'v'}, 'F', '<Plug>(easymotion-bd-f)')
vim.keymap.set({'n', 'o', 'v'}, 't', '<Plug>(easymotion-bd-tl)')
vim.keymap.set({'n', 'o', 'v'}, 'T', '<Plug>(easymotion-bd-t)')
