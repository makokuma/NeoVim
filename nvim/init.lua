require("core.options")
require("core.keymaps")
require("core.autocmds")

-- AI tool

require("plugins.lazy").setup({
  { import = "plugins.files" },
  { import = "plugins.lsp" },
  { import = "plugins.git" },
  { import = "plugins.ui" },
  { import = "plugins.editor" },
  { import = "plugins.ai" },
})
