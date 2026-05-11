-- Mason, and mason related dependencies
vim.pack.add({ 
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/hrsh7th/cmp-nvim-lsp",
})

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Standard "Attach" function
-- This sets up your keymaps ONLY when a language server is active
local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- LSP Navigation and Information

    -- Jump to the definition of the symbol under the cursor
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

    -- Jump to the declaration of the symbol under the cursor
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)

    -- Display hover information about the symbol under the cursor
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

    -- List all references to the symbol under the cursor
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)

    -- Search for a symbol in the current workspace
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)

     -- Display signature information in insert mode
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    -- Diagnostics

    -- Show diagnostics in a floating window
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

    -- Go to the previous diagnostic message
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)

    -- Go to the next diagnostic message
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)

    -- LSP Actions

    -- Select a code action available at the current cursor position
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

    -- Rename all occurrences of the symbol under the cursor
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)

    -- Format the current buffer asynchronously
    vim.keymap.set("n", "<leader>cf", function() vim.lsp.buf.format { async = true } end, opts)
end


vim.diagnostic.config(
    {
        virtual_text = true,
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = "",
                [vim.diagnostic.severity.WARN] = "󱈸",
                [vim.diagnostic.severity.HINT] = "󰌵 ",
                [vim.diagnostic.severity.INFO] = "i"
            }
        },
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = ""
        }
    }
)

local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lspconfig.setup({
    ensure_installed = {
      "basedpyright",
      "lua-ls",
      "ruff",
      "pylsp",
      "rust_analyzer",
      "clangd",
    },
    handlers = {
      function(server_name)
        lspconfig[server_name].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
    }
})

