call plug#begin(stdpath('data') . '/plugged')

"" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'Yggdroot/indentLine'

"" Themes
Plug 'chriskempson/base16-vim'

"" Language specific
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
call plug#end()

"" Configuration
let g:indentLine_char_list = ['┊']
let g:vim_json_conceal=0
