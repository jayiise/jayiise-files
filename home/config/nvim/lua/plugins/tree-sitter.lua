return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "python",
      "c",
      "typescript",
      "javascript",
      "bash",
      "ini",
      "yaml",
      "kdl",
      "toml",
      "css",
      "html",
      "json",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
