local map = vim.keymap.set

local telescope_builtin = require("telescope.builtin")

-- Random
vim.g.mapleader = " "
map("n", "<leader>e", vim.cmd.Ex)
map("n", "<leader>d", vim.diagnostic.setloclist)
map("n", "<leader>f", telescope_builtin.find_files)
map("n", "<leader>F", telescope_builtin.live_grep)
map("n", "<leader>m", vim.cmd.Notifications)



map("n", "<leader>t", function() vim.cmd.vsplit() vim.cmd.wincmd("l") vim.cmd.terminal() end)
map("n", "<C-A-q>", [[<C-\><C-n>]])

map("n", "<leader>u", vim.cmd.bprevious)
map("n", "<leader>i", vim.cmd.bnext)
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>y", vim.cmd.split)
map("n", "<leader>o", vim.cmd.vsplit)
