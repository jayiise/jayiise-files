local create_cmd = vim.api.nvim_create_autocmd

create_cmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})

create_cmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      scope = "cursor",
    })
  end,
})
