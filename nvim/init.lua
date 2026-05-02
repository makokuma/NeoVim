require("core.options")
require("core.keymaps")
require("core.autocmds")

-- AI tool

require("plugins.lazy").setup({
  { import = "plugins.ai" },
})
