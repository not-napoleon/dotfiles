-- Configure Treesitter

vim.treesitter.start() -- Enable highlighting
vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()' -- set fold expression to use treesitter
vim.wo[0][0].foldmethod = 'expr' -- set fold method to use the fold expression
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- Enable experimental treesitter indentation

vim.lsp.enable("rust-analyzer")
