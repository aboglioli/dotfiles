call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'dense-analysis/ale'

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
" Plug 'camspiers/lens.vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'Yggdroot/indentLine'

"" Themes
Plug 'chriskempson/base16-vim'

"" Language specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

"" Coc
let g:coc_global_extensions = [
  \'coc-css',
  \'coc-emmet',
  \'coc-eslint',
  \'coc-go',
  \'coc-html',
  \'coc-json',
  \'coc-prettier',
  \'coc-rls',
  \'coc-tslint',
  \'coc-tslint-plugin',
  \'coc-tsserver',
  \'coc-yank',
  \]

"" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" " gutentags
" if executable('rg')
"   let g:gutentags_file_list_command = 'rg --files'
" endif

"" fzf
" let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'

"" lightline
let g:lightline = { 'colorscheme': 'wombat' }

"" vim-go
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" indentLine
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['┊']
