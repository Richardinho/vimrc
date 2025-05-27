# Lazy Work Config for Neovim

## Getting Started
1. clone this repo
2. create symbolic link
```
ln -s <path-to-repo>/lazy-work-config ~/.config/lazy-work-config
```
3. run with
```
NVIM_APPNAME=lazy-work-config nvim <file-to-edit>

```
4. Alternatively, you can set `NVIM_APPNAME` in your `~/.zshrc` file so that it always applies:
```
export NVIM_APPNAME=lazy-work-config
```
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
| mapping | description |
|-|-|
| &lt;leader>tr | open a fresh NERDTree |
| &lt;leader>tf | opens NERDTree if it is not already open |
| &lt;leader>tv | open file for current buffer in NERDTree |

### FZF Lua

repository: https://github.com/ibhagwan/fzf-lua

#### keymappings:
| mapping | description |
|-|-|
| &lt;Ctrl> p | search for files |
| &lt;Ctrl> g | grep in project |
| &lt;leader> gw | grep word under cursor |
| &lt;Ctrl> r | resume |

#### in picker keymappings
| mapping | description |
|-|-|
| &lt;Ctrl> h | hide |
| &lt;Ctrl> l | toggle help |
| &lt;Ctrl> f | toggle fullscreen |
| &lt;Ctrl> r | toggle preview |
| &lt;Ctrl> d | preview-page-down |
| &lt;Ctrl> u | preview-page-up |

### Bufexplorer

repository: https://github.com/jlanzarotta/bufexplorer

#### keymappings:
| mapping | description |
|-|-|
| &lt;leader> be | open BufExplorer |

in buffer:
| mapping | description |
|-|-|
| d | delete buffer |
| D | wipe buffer |
| q | quit |
| V | open buffer in another window on the left of the current |
| v | open buffer in another window on the right of the current |
| f | open buffer in another window below the current |
| F | open buffer in another window above the current |
| O | open buffer in original window |
| D | wipe buffer |

### LuaSnip

repository: https://github.com/L3MON4D3/LuaSnip


### blink.cmp

repository: https://github.com/Saghen/blink.cmp

#### keymappings: 
| mapping | description |
|-|-|
| &lt;Ctrl> y | select and accept |
| &lt;Ctrl> e | dismiss |
| &lt;Ctrl> &lt;space> | show/hide documentation |
| &lt;Ctrl> p | select previous |
| &lt;Ctrl> n | select next |
| &lt;Tab> | snippet forward |
| &lt;S-Tab> | snippet back |
| &lt;Ctrl> k | show/hide signature |

### Fugitive

repository: https://github.com/tpope/vim-fugitive

## colorscheme
koehler

## TODO
* why is ctrl-Y not doing default behaviour?
* work out how to add custom snippets
* divide Lazy config into separate files
