# Test 4 Neovim Config

## Plugins

* NERDTree  
* fzf-lua
* bufexplorer
* LuaSnip
* blink.cmp

### NERDTree
repository: 

keymappings:
`<leader>tr`: open a fresh NERDTree 
`<leader>tf`: opens NERDTree if it is not already open
`<leader>tv`: open file for current buffer in NERDTree

### FZF Lua
repository:

keymappings:
`<Ctrl> p`: search for files
`<Ctrl> g`: grep in project
`<leader> gw`: grep word under cursor
`<Ctrl> r`: resume
in picker keymappings
`<Ctrl> h`: hide
`<Ctrl> /`: toggle help
`<Ctrl> f`: toggle fullscreen
`<Ctrl> p`: toggle preview
`<Ctrl> d`: preview-page-down
`<Ctrl> u`: preview-page-up

### Bufexplorer
`<leader> be`: open Bufexplorer 
in buffer:
`d`: delete buffer
`q`: quit
`v`: open buffer in another window on the left of the current
`O`: open buffer in original window
`D`: wipe buffer

### LuaSnip

repository:


### blink.cmp
repository:

keymappings: 
`<Ctrl> y`: select and accept
`<Ctrl> e`: dismiss
`<Ctrl> <space>`: show/hide documentation
`<Ctrl> p`: select previous
`<Ctrl> n`: select next
`<Tab>`: snippet forward
`<S-Tab>`: snippet back
`<Ctrl> k`: show/hide signature


## colorscheme
koehler

## TODO
* why is ctrl-Y not doing default behaviour?
* work out how to add custom snippets
