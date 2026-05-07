-- ==============================================================================
-- KEYMAPS
-- ==============================================================================

-- Set leader key to backslash
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- General quality of life
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Return to File Explorer" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Telescope Keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- Easymotion Key Bindings
vim.keymap.set({'n', 'o', 'v'}, 'f', '<Plug>(easymotion-bd-fl)')
vim.keymap.set({'n', 'o', 'v'}, 'F', '<Plug>(easymotion-bd-f)')
vim.keymap.set({'n', 'o', 'v'}, 't', '<Plug>(easymotion-bd-tl)')
vim.keymap.set({'n', 'o', 'v'}, 'T', '<Plug>(easymotion-bd-t)')
