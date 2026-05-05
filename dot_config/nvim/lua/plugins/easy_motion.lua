
vim.pack.add({ "https://github.com/easymotion/vim-easymotion" })

-- Key Bindings
vim.keymap.set({'n', 'o', 'v'}, 'f', '<Plug>(easymotion-bd-fl)')
vim.keymap.set({'n', 'o', 'v'}, 'F', '<Plug>(easymotion-bd-f)')
vim.keymap.set({'n', 'o', 'v'}, 't', '<Plug>(easymotion-bd-tl)')
vim.keymap.set({'n', 'o', 'v'}, 'T', '<Plug>(easymotion-bd-t)')
