function source_file(name)
  local config_path = vim.call("stdpath", "config")
  vim.cmd("source " .. config_path .. "/lua/" .. name .. ".lua")
end

-- important to source these first so leader is mapped
source_file("settings")
source_file("plugins")
source_file("base-mappings")
source_file("nerdtree-mappings")
source_file("fugitive-mappings")
source_file("emacs-keybindings")
source_file("lua-snip")
source_file("_null-ls")
source_file("lsp")
--source_file("_cmp")
source_file("_telescope")

require("mason").setup()

vim.cmd([[

  set listchars=eol:⏎,tab:->,trail:.,nbsp:.,space:.

  let NERDTreeShowLineNumbers=1

  " enable commenting using vim-surround
  let g:surround_45 = "/* \r */"

  autocmd BufRead,BufNewFile *.ts set suffixesadd+=.ts

]])

