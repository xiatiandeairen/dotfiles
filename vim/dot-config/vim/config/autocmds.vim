augroup autosave
    autocmd!
    " 自动保存文件
    au InsertLeave * silent! write
augroup END

augroup filetype
    autocmd!
    " 设置 Python 文件的缩进
    autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
    " 设置 JavaScript 文件的缩进
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
    " 设置 HTML 文件的缩进
    autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
augroup END