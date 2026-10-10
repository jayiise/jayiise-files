return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 4000,
    stages = "static",
    top_down = true,
  },
  config = function(_, opts)
    require("notify").setup(opts)
    vim.notify = require("notify")
  end,
}
