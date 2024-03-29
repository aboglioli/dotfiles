call plug#begin(stdpath('data') . '/plugged')

"" General
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hoob3rt/lualine.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'github/copilot.vim'
Plug 'sindrets/diffview.nvim'
Plug 'MunifTanjim/nui.nvim'

"" Themes
Plug 'kyazdani42/nvim-web-devicons' " Icons
Plug 'chriskempson/base16-vim'
Plug 'savq/melange'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'navarasu/onedark.nvim'

"" Language specific
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

"" DAP
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mxsdev/nvim-dap-vscode-js'
Plug 'microsoft/vscode-js-debug', { 'do': 'npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out' }

call plug#end()
