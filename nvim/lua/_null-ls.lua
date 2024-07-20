local null_ls = require("null-ls")

local lSsources = {
  null_ls.builtins.formatting.prettier.with({
    filetypes = {
      "javascript",
      "typescript",
      "css",
      "scss",
      "html",
      "json",
      "yaml",
      "markdown",
      "graphql",
      "md",
      "txt",
    },
  }),
  null_ls.builtins.formatting.stylua,
}

null_ls.setup({
  sources = lSsources,
})

vim.cmd("autocmd BufWritePost * lua vim.lsp.buf.format()")
