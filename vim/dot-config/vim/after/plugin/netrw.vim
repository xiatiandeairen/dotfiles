" 设置 netrw 的目录视图为树状（3）
let g:netrw_liststyle = 3           " 目录树模式
" 设置 netrw 窗口大小为 25%
let g:netrw_winsize = 25            " 设置 netrw 窗口宽度为 25%
" 显示隐藏文件（以 . 开头的文件）
let g:netrw_show_hidden = 1         " 显示隐藏文件
" 显示文件大小和修改时间
let g:netrw_list_hide = '.*\.swp'   " 隐藏交换文件
let g:netrw_banner = 0              " 禁用欢迎信息
" 启用快速浏览模式
let g:netrw_fastbrowse = 1
" 禁止目录刷新时的自动更新
let g:netrw_autoflush = 0

nnoremap <leader>ee :Lexplore<CR>  " 使用 `Ctrl-n` 打开 netrw