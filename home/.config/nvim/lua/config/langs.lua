local lsfig = vim.lsp.config

lsfig("lua_ls", { settings = {
  Lua = {
    runtime = {
      version = "LuaJIT"
    },
    diagnostics = {
      globals = { "vim" }
    },
    workspace = {
      library = vim.api.nvim_get_runtime_file("", true),
      checkThirdParty = false
    },
    telemetry = {
      enable = false
    }
  }
}})

lsfig("pyright", { settings = {
  python = {
    pythonPath = vim.fn.expand("~/.python/bin/python3")
  }
}})
