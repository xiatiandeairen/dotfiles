" 历史记录
set history=5000

" Enable filetype plugins
set nocompatible
filetype plugin indent on
syntax enable
set encoding=utf8

" 行号
set number
set relativenumber

" 启用智能缩进
set smartindent
set autoindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  

" 自动换行
set wrap

" 开启行尾高亮
set cursorline
set ruler

" 启用命令行自动补全
set wildmenu
set wildmode=longest:full,full

" 搜索
set hlsearch
set incsearch
set ignorecase 
set smartcase

" 延迟屏幕更新,提高执行效率
set lazyredraw

" 设置状态行的颜色
set laststatus=2
set statusline=%F\ %y\ %m\ %r\ %=%l/%L\ %p%%

" 设置备份文件的保存路径
set backup
set backupdir=$MYVIMDIR/backup//

" 设置交换文件的保存路径
set swapfile
set directory=$MYVIMDIR/swap//