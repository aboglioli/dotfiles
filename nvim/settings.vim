set relativenumber
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
set smartindent
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

filetype plugin indent on

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

augroup LuaHighlight
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

"" Configuration
let g:indentLine_char_list = ['|']
let g:vim_json_conceal=0

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}
require'lualine'.setup {
  options = {theme = 'everforest'}
}
require'indent_blankline'.setup {
    show_current_context = true,
    show_current_context_start = true,
}
EOF
