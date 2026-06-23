-- Assorted plugins requiring no or minimal configuration
vim.pack.add({
    {
        src = "https://github.com/kylechui/nvim-surround",
        version = vim.version.range("4.x"), -- Use for stability; omit to use `main` branch for the latest features
    }
})
vim.pack.add({
    "https://github.com/easymotion/vim-easymotion",
    "https://github.com/gregorias/nvim-surround-wk", -- whichkey integration for surround
    "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
    "https://github.com/folke/which-key.nvim",
    "https://github.com/windwp/nvim-autopairs",
})

require("nvim-autopairs").setup {}
