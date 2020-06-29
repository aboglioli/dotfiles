call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lsp'
Plug 'Chiel92/vim-autoformat'
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }

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
Plug 'camspiers/lens.vim'

"" Themes
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'iCyMind/NeoSolarized'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'

"" Language specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'
call plug#end()

" Configuration
"" lightline
let g:lightline = { 'colorscheme': 'one' }

"" fzf
function! s:update_fzf_colors()
  let rules =
        \ { 'fg':      [['Normal',       'fg']],
        \ 'bg':      [['Normal',       'bg']],
        \ 'hl':      [['Comment',      'fg']],
        \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
        \ 'bg+':     [['CursorColumn', 'bg']],
        \ 'hl+':     [['Statement',    'fg']],
        \ 'info':    [['PreProc',      'fg']],
        \ 'prompt':  [['Conditional',  'fg']],
        \ 'pointer': [['Exception',    'fg']],
        \ 'marker':  [['Keyword',      'fg']],
        \ 'spinner': [['Label',        'fg']],
        \ 'header':  [['Comment',      'fg']] }
  let cols = []
  for [name, pairs] in items(rules)
    for pair in pairs
      let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
      if !empty(name) && code > 0
        call add(cols, name.':'.code)
        break
      endif
    endfor
  endfor
  let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
  let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
        \ empty(cols) ? '' : (' --color='.join(cols, ','))
endfunction

augroup _fzf
  autocmd!
  autocmd ColorScheme * call <sid>update_fzf_colors()
augroup END

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

"" coc.vim
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" inoremap <silent><expr> <c-space> coc#refresh()
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" autocmd CursorHold * silent call CocActionAsync('highlight')
" nmap <leader>rn <Plug>(coc-rename)
" setup rust_analyzer LSP (IDE features)
