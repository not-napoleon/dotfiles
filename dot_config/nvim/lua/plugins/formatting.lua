-- Autoformatting using conform plugin

vim.pack.add { "https://github.com/stevearc/conform.nvim" }

require("conform").setup {
  formatters_by_ft = {
    -- Fast Python formatter
    python = { "ruff_organize_imports", "ruff_format" },
    -- Standard Rust formatter
    rust = { "rustfmt" },
    -- Standard C/C++ formatter
    cpp = { "clang-format" },
    c = { "clang-format" },
    lua = { "stylua" },
  },
}

-- Provide a formatexpr, so `gq` will use this when possible
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

-- Format on save, for all filetypes
-- There's a recipe for adding a toggle for this, see
-- https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md#command-to-toggle-format-on-save

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function(args)
--     require("conform").format({ bufnr = args.buf })
--   end,
-- })
