-- vim: ts=2 sts=2 sw=2 et

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
  "https://github.com/easymotion/vim-easymotion"

})

  -- surround text object
  --{ "echasnovski/mini.surround",
    --config = function(_, opts)
      --require('mini.surround').setup(opts)
    --end
  --},
--
  -- show indent guides on blank lines
  --{ "lukas-reineke/indent-blankline.nvim",
    --main = "ibl",
    --opts = {},
  --},
--})

-- set colour scheme
vim.cmd.colorscheme "catppuccin"

-- highlight yanked text
--local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
--vim.api.nvim_create_autocmd('TextYankPost', {
    --callback = function()
        --vim.highlight.on_yank()
    ----end,
    --group = highlight_group,
    --pattern = '*',
--})

-- lsp keybindings
--vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {desc = 'Rename Symbol'})
--vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {desc = 'Goto Definition'})
--vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc = 'Code Action'})
--vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc = 'Hover Documentation'})
--vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {desc = 'Format Code'})

-- Easy Motion
vim.keymap.set({'n', 'o', 'v'}, 'f', '<Plug>(easymotion-bd-fl)')
vim.keymap.set({'n', 'o', 'v'}, 'F', '<Plug>(easymotion-bd-f)')
vim.keymap.set({'n', 'o', 'v'}, 't', '<Plug>(easymotion-bd-tl)')
vim.keymap.set({'n', 'o', 'v'}, 'T', '<Plug>(easymotion-bd-t)')
