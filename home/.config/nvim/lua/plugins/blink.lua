return {
  "saghen/blink.cmp",
  dependencies = {
    "saghen/blink.lib",
  },
  build = function()
    require('blink.cmp').build():pwait()
  end,
  opts = {
    keymap = {
      preset = "enter",
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = {
      implementation = "lua",
    },
  },
}
