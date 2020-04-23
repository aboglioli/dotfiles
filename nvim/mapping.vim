" Reload
map <silent> <Leader>r :source ~/.config/nvim/init.vim<CR>:echo "NVIM Reloaded"<CR>

" Keybindings
nnoremap <silent> <F2> :bp<CR>
nnoremap <silent> <F3> :bn<CR>
nnoremap <silent> <leader>ws :split<CR>
nnoremap <silent> <leader>wv :vsplit<CR>
nnoremap <silent> <leader>wS :split<CR><C-W>w
nnoremap <silent> <leader>wV :vsplit<CR><C-W>w
nnoremap <silent> <leader>wd <C-W>q
nnoremap <silent> <leader>w <C-W>

nnoremap <silent> <C-P> :Files<CR>
nnoremap <silent> <leader>p :GFiles<CR>
nnoremap <silent> <leader>e :Explore<CR>
" nnoremap <silent> <leader>e :Files <C-R>=expand('%:h')<CR><CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>s :Rg<CR>
nnoremap <silent> <leader>l :BLines<CR>

nnoremap <silent> <leader>c :echo expand("%:h")<CR>:e %:h/

nnoremap <silent> <leader><tab> :b#<CR>

nnoremap <silent> <leader>gd <Plug>(coc-definition)
nnoremap <silent> <leader>gr <Plug>(coc-references)
nnoremap <silent> <leader>gi <Plug>(coc-implementation)
