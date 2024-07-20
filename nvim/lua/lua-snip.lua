local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

vim.keymap.set({ "i" }, "<C-K>", function()
  ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
  ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
  ls.jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- experimental snippet
ls.add_snippets("all", {
  s("hello", t("its the end of the world")),
})

require("luasnip.loaders.from_vscode").load()

-- can't load as a normal plugin for these reasons:
-- 1. isn't a vim plugin so vim-plug does not set it into runtime path
-- 2. repo code uses scopes, which don't work with lua-snip, so I needed to fork repo

local vscode_jest_snippets_path = "~/development/nvim/vscode-jest-snippets"

vim.opt.rtp:append(vscode_jest_snippets_path)
