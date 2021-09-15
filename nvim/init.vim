let mapleader = "\<Space>"

runtime! plugins.vim
runtime! settings.vim
runtime! theme.vim
runtime! mapping.vim
runtime! lsp-config.lua

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

if !has('gui_running')
  set t_Co=256
endif
