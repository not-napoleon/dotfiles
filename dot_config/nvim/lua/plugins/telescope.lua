-- Telescope installation and configuration

-- Compile hook for nvim-telescope/telescope-fzf-native.nvim
local hooks = function(ev)
  -- Use available |event-data|
  local name, kind = ev.data.spec.name, ev.data.kind

  -- Run build script after plugin's code has changed
  if name == "telescope-fzf-native" and (kind == "install" or kind == "update") then
    -- Append `:wait()` if you need synchronous execution
    vim.system({ "make" }, { cwd = ev.data.path })
  end
end

vim.api.nvim_create_autocmd("PackChanged", { callback = hooks })

vim.pack.add ({
  { src = "https://github.com/nvim-telescope/telescope.nvim", version = "v0.2.2" },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Enable selecting emoji from telescope.  Emoji installed in completions.lua
require("telescope").load_extension("emoji")
-- optional for telescope emoji integration
local ts = require("telescope").load_extension "emoji"
vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "[S]earch [E]moji" })
