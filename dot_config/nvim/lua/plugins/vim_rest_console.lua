vim.pack.add({ "https://github.com/diepm/vim-rest-console" })

vim.g.vrc_elasticsearch_support = 1
vim.g.vrc_output_buffer_name = '__VRC_OUTPUT.json'
vim.g.vrc_response_default_content_type = 'json'
vim.g.vrc_auto_format_response_patterns = { json = "jq ." }

