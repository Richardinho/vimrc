# Lazy Work Config for Neovim

## Plugins

* NERDTree  
* fzf-lua
* bufexplorer
* LuaSnip
* blink.cmp
* Fugitive

### NERDTree

repository: https://github.com/preservim/nerdtree

#### keymappings:
* `<leader>tr`: open a fresh NERDTree 
* `<leader>tf`: opens NERDTree if it is not already open
* `<leader>tv`: open file for current buffer in NERDTree

### FZF Lua

repository: https://github.com/ibhagwan/fzf-lua

#### keymappings:
* `<Ctrl> p`: search for files
* `<Ctrl> g`: grep in project
* `<leader> gw`: grep word under cursor
* `<Ctrl> r`: resume

#### in picker keymappings
* `<Ctrl> h`: hide
* `<Ctrl> /`: toggle help
* `<Ctrl> f`: toggle fullscreen
* `<Ctrl> r`: toggle preview
* `<Ctrl> d`: preview-page-down
* `<Ctrl> u`: preview-page-up

### Bufexplorer

repository: https://github.com/jlanzarotta/bufexplorer

#### keymappings:
* `<leader> be`: open BufExplorer 
in buffer:
* `d`: delete buffer
* `D`: wipe buffer
* `q`: quit

* `V`: open buffer in another window on the left of the current
* `v`: open buffer in another window on the right of the current
* `f`: open buffer in another window below the current
* `F`: open buffer in another window above the current
* `O`: open buffer in original window
* `D`: wipe buffer

### LuaSnip

repository: https://github.com/L3MON4D3/LuaSnip


### blink.cmp

repository: https://github.com/Saghen/blink.cmp

#### keymappings: 
* `<Ctrl> y`: select and accept
* `<Ctrl> e`: dismiss
* `<Ctrl> <space>`: show/hide documentation
* `<Ctrl> p`: select previous
* `<Ctrl> n`: select next
* `<Tab>`: snippet forward
* `<S-Tab>`: snippet back
* `<Ctrl> k`: show/hide signature

### Fugitive

repository: https://github.com/tpope/vim-fugitive

## colorscheme
koehler

## TODO
* why is ctrl-Y not doing default behaviour?
* work out how to add custom snippets
* divide Lazy config into separate files
