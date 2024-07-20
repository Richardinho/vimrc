require("mason").setup()
require("mason-lspconfig").setup()
local lsp = require("lspconfig")
lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim",
        },
      },
    },
  },
})

lsp.angularls.setup({})
lsp.tsserver.setup({})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set("n", "F", vim.lsp.buf.format, { buffer = args.buf })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = args.buf })
    vim.keymap.set("n", "gd", vim.lsp.buf.declaration, { buffer = args.buf })

    if client.server_capabilities.implementationProvider then
      vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = args.buf })
    end
  end,
})
