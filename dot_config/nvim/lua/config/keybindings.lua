-- ==============================================================================
-- KEYMAPS
-- ==============================================================================

local opts = { noremap = true, silent = true }

-- Set leader key to backslash
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- General quality of life
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true, desc = "Return to File Explorer" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true, desc = "Clear search highlights" })
vim.keymap.set({'n', 'v'}, "<Space>", "za", {noremap = true, silent = true, desc = "Toggle folds with Spacebar" })

-- Telescope Keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true, desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { noremap = true, silent = true, desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { noremap = true, silent = true, desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { noremap = true, silent = true, desc = 'Telescope help tags' })

-- Easymotion Key Bindings
vim.keymap.set({'n', 'o', 'v'}, 'f', '<Plug>(easymotion-bd-fl)')
vim.keymap.set({'n', 'o', 'v'}, 'F', '<Plug>(easymotion-bd-f)')
vim.keymap.set({'n', 'o', 'v'}, 't', '<Plug>(easymotion-bd-tl)')
vim.keymap.set({'n', 'o', 'v'}, 'T', '<Plug>(easymotion-bd-t)')

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

-- Press jk fast to exit insert mode
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.keymap.set('i', 'kj', '<ESC>', opts)
