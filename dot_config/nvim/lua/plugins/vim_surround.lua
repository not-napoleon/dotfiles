vim.pack.add({ {
    src = "https://github.com/kylechui/nvim-surround",
    version = vim.version.range("4.x"), -- Use for stability; omit to use `main` branch for the latest features
} })

vim.pack.add({
    "https://github.com/gregorias/nvim-surround-wk", -- whichkey integration for surround
    "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
})

-- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
-- require("nvim-surround").setup({
--     -- Put your configuration here
-- })
