return {
  "folke/tokyonight.nvim",
  opts = {
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight-night")
  end,
}
