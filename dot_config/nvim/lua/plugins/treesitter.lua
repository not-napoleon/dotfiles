-- Treesitter configuration

vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

-- NB: run :TSUpdate after updating this plugin.  I'm sure there's a way to automate that...

require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install {
    'bash',
    'c',
    'cpp',
    'css',
    'csv',
    'fish',
    'gitcommit',
    'gitignore',
    'html',
    'java',
    'javadoc',
    'json',
    'kitty',
    'lua',
    'luadoc',
    'python',
    'rust',
    'sql'
}
