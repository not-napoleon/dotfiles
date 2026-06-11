vim.pack.add({
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-buffer",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/hrsh7th/cmp-cmdline",
    "https://github.com/Allaman/emoji.nvim",
})

local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        -- ["<C-Space>"] = cmp.mapping.complete(),          -- Manually trigger
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept suggestion
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Highest priority
    }, {
--         { name = "buffer" }, -- Text from current file
        { name = "path" },   -- File paths
        { name = "emoji" },  -- Emoji
    }),
})


-- Use cmdline & path source for ':' (command mode)
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

require("emoji").setup {
  -- enable completion
  enable_cmp_integration = true,
  -- optional if your plugin installation directory
  -- is not vim.fn.stdpath("data") .. "/lazy/
  plugin_path = vim.fn.expand "$HOME/.local/share/nvim/site/pack/core/opt",
}
