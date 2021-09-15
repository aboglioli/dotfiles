" set number
set relativenumber
" set noshowcmd
set clipboard=unnamed
set hidden
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nowrap
set cursorline
set laststatus=2
set noshowmode
set autoindent
" set autochdir
set autoread
set splitbelow
set splitright
set nobackup
set nowritebackup
set noswapfile
set updatetime=300
set cmdheight=1
set shortmess+=c
set signcolumn=yes
set colorcolumn=100
set ignorecase
set smartcase
set autoread
set scrolloff=2
set sidescrolloff=5
set list
set listchars=tab:\┊\ 
set inccommand=split
set conceallevel=0

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

augroup LuaHighlight
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

"" Configuration
let g:indentLine_char_list = ['┊']
let g:vim_json_conceal=0

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}
EOF
