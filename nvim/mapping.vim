" Reload
map <silent> <Leader>r :source ~/.config/nvim/init.vim<CR>:echo "NVIM Reloaded"<CR>

" Keybindings
nnoremap <silent> <F2> :bp<CR>
nnoremap <silent> <F3> :bn<CR>
nnoremap <silent> <leader>w :w<CR>

nnoremap <silent> <C-P> :GFiles --cached --others --exclude-standard<CR>
nnoremap <silent> <leader>p :Files %:h<CR>
nnoremap <silent> <leader>e :NERDTreeToggle %<CR>
nnoremap <silent> <leader>f :NERDTreeToggle .<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>t :BTags<CR>

nnoremap <silent> <leader><tab> :b#<CR>

nnoremap <silent> <leader>] :vsp<CR>:exec("tag ".expand("<cword>"))<CR>

nnoremap <leader>o :Files %:h/../
nnoremap <leader>c :e %:h/
nnoremap <leader>v :r %:h/
nnoremap <leader>m :!mv % %:h/
nnoremap <leader>i :%s/\<<C-R><C-W>\>//g<Left><Left>
vnoremap <leader>i y :%s/<C-R>"//g<Left><Left>
nnoremap <leader>gs :CocSearch <C-R><C-W>
vnoremap <leader>gs y :CocSearch <C-R>"
nnoremap <leader>s :Rg <C-R><C-W>
vnoremap <leader>s y :Rg <C-R>"

nnoremap gp `[v`]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-codeaction)


command! Bdo %bd|e#

noremap 0 ^
noremap ^ 0

tnoremap <C-w> <C-\><C-n>

" For specific files
autocmd FileType rust nnoremap <buffer> <C-T> :RustTest<CR>
