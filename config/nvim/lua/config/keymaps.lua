local setkey = vim.keymap.set

setkey("n", "<leader><space>", vim.cmd.Ex)

setkey("n", "<leader>e", vim.cmd.Ex)
setkey("n", "<leader>t", function()
	Snacks.terminal()
end)
