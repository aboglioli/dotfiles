" Reload
map <silent> <Leader>r :source ~/.config/nvim/init.vim<cr>:echo "NVIM Reloaded"<cr>

" Keybindings
nnoremap <silent> <F2> :bp<cr>
nnoremap <silent> <F3> :bn<cr>
nnoremap <silent> <leader>w :w<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <leader>te :NvimTreeToggle %:h<cr>
nnoremap <silent> <leader>tf :NvimTreeToggle .<cr>

nnoremap <silent> <leader><tab> :b#<cr>

nnoremap <leader>c :e %:h/
nnoremap <leader>v :r %:h/
nnoremap <leader>m :!mv % %:h/
nnoremap <leader>i :%s/\<<C-R><C-W>\>//g<Left><Left>
vnoremap <leader>i y :%s/<C-R>"//g<Left><Left>

nnoremap gp `[v`]

command! Bdo %bd|e#

noremap 0 ^
noremap ^ 0

tnoremap <C-w> <C-\><C-n>

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
