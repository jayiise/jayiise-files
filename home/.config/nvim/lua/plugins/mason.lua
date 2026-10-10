return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "clangd",
      "pyright",
      "lua_ls",
      "ts_ls",
      "html",
      "cssls",
      "jsonls",
    },
    automatic_enable = true,
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {}, },
    "neovim/nvim-lspconfig",
  },
}
