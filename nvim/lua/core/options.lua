-- lua/core/options.lua

local opt=vim.opt

-- display settings
-- show line number
opt.number = true
opt.relativenumber = true

--visual
opt.colorcolumn = "100"
opt.scrolloff = 8
opt.wrap = false
opt.termguicolors = true

-- highlites
opt.cursorline = true

--show error line
opt.signcolumn = "yes"

--indent settings
--show tub word
opt.tabstop = 4
-- indent space
opt.shiftwidth = 4
--when press tub how many blocks
opt.softtabstop = 4

opt.expandtab = true
opt.smartindent = true

--search
--do not consider Large letter and small letter
opt.ignorecase = true
opt.smartcase = true

--show result with highlight
opt.hlsearch = true
--jump during searching
opt.incsearch = true

--split
--when type ':vsplit' open new window in right side
opt.splitright = true
--when type ':split' open new window in upper side
opt.splitbelow = true

--file
-- do not make swpfile
opt.swapfile = false
-- make back up file
opt.backup = true
-- save undo
opt.undofile = true

-- add backup file time(s)
opt.updatetime = 250

-- type waiting time(mm sec)
opt.timeoutlen = 400

opt.clipboard = "unnamedplus"

--show brunk
opt.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

--complement
opt.pumheight = 10

--show mode
opt.showmode = true







