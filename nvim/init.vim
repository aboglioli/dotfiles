let mapleader = "\<Space>"

runtime! plugins.vim
runtime! settings.vim
runtime! theme.vim
runtime! mapping.vim

" Startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Explore | endif
