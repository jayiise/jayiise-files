local opt = vim.opt

-- Randos
opt.clipboard:append("unnamedplus")
opt.undofile = true
opt.updatetime = 250
vim.g.netrw_banner = 0
opt.cursorline = true
vim.cmd("filetype indent off")



opt.number = true
opt.relativenumber = true
opt.wrap = false

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
