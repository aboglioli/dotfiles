" Reload
map <silent> <Leader>r :source ~/.config/nvim/init.vim<CR>:echo "NVIM Reloaded"<CR>

" Keybindings
nnoremap <silent> <F2> :bp<CR>
nnoremap <silent> <F3> :bn<CR>
nnoremap <silent> <leader>w :w<CR>

nnoremap <silent> <C-P> :GFiles --cached --others --exclude-standard<CR>
nnoremap <silent> <leader>p :Files %:h<CR>
nnoremap <silent> <leader>e :NvimTreeToggle %:h<CR>
nnoremap <silent> <leader>f :NvimTreeToggle .<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>t :BTags<CR>

nnoremap <silent> <leader><tab> :b#<CR>

nnoremap <leader>o :Files %:h/../
nnoremap <leader>c :e %:h/
nnoremap <leader>v :r %:h/
nnoremap <leader>m :!mv % %:h/
nnoremap <leader>i :%s/\<<C-R><C-W>\>//g<Left><Left>
vnoremap <leader>i y :%s/<C-R>"//g<Left><Left>
nnoremap <leader>s :Rg <C-R><C-W>
vnoremap <leader>s y :Rg <C-R>"

nnoremap gp `[v`]

command! Bdo %bd|e#

noremap 0 ^
noremap ^ 0

tnoremap <C-w> <C-\><C-n>

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 100)
