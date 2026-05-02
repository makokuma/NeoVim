-- lua/core/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local core_group = augroup("CoreAutocmds", { clear = true })

-- Highlight yanked text
autocmd("TextYankPost", {
  group = core_group,
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight text on yank",
})

-- Remove training whitespace on save
autocmd("BufWritePre", {
  group = core_group,
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
  desc = "Remove trailing whitespace on save",
})

-- Restore cursor position
autocmd("BufReadPost", {
  group = core_group,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)

    if mark[1] > 0 and mark[1] <= line_count then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
  desc = "Restore cursor position",
})
