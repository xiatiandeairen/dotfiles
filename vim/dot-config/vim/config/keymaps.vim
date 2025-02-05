let g:mapleader=' '

" Fast saving
nnoremap <leader>W :w!<cr>
nnoremap <leader>Q :q!<cr>

nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bc :bd!<cr>

nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tp :tabp<cr>

nnoremap <leader>wv <C-W>v
nnoremap <leader>ws <C-W>s
nnoremap <leader>wc :close<cr>
nnoremap <leader>wo <C-W>o

nnoremap <Leader>. @:
nnoremap U <C-r>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>gq :call QuickfixToggle()<cr>
