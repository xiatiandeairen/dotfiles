let g:mapleader=' '

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<cr>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bc :bd!<cr>

nnoremap <leader>to :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tp :tabp<cr>

nnoremap <leader>sv <C-W>v
nnoremap <leader>sh <C-W>h
nnoremap <leader>se <C-W>e
nnoremap <leader>sc :close<cr>


" ale
" 快速跳转至错误的快捷键
nnoremap <Leader>en <Plug>(ale_next)
nnoremap <Leader>ep <Plug>(ale_previous)

" fzf
nnoremap <Leader>fh :History<CR>
nnoremap <Leader>fl :Lines<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fg :GFiles<CR>
nnoremap <Leader>f? :GFiles?<CR>
nnoremap <Leader>ft :Tags<CR>
nnoremap <Leader>fa :Ag<CR>
nnoremap <Leader>fc :Commits<CR>
