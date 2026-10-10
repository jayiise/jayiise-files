local parsers = {
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
  "rasi",
}

return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter").setup()
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local filetype = args.match
        local lang = vim.treesitter.language.get_lang(filetype)

        if lang and pcall(vim.treesitter.start, args.buf, lang) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
