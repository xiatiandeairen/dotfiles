-- 设置历史记录
vim.opt.history = 5000

-- 启用文件类型插件，智能缩进，语法高亮和UTF-8编码
vim.opt.filetype = "on"
vim.opt.filetype.indent = "on"
vim.opt.filetype.plugin = "on"
vim.opt.syntax = "on"
vim.opt.compatible = false
vim.opt.encoding = "utf-8"

vim.opt.ruler = true
vim.opt.cursorline = true

-- 行号和相对行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 启用智能缩进
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- 自动换行
vim.opt.wrap = true

-- 启用光标行高亮和状态行
vim.opt.cursorline = true
vim.opt.ruler = true

-- 启用命令行补全
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

-- 搜索设置
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 延迟屏幕更新提高效率
-- vim.opt.lazyredraw = true

-- 设置状态栏
vim.opt.laststatus = 2
vim.opt.statusline = "%F %y %m %r %= %l/%L %p%%"

-- 设置备份和交换文件路径
vim.opt.backup = true
vim.opt.backupdir = vim.fn.expand("$MYVIMDIR/backup//")

vim.opt.swapfile = true
vim.opt.directory = vim.fn.expand("$MYVIMDIR/swap//")

-- backspace
vim.opt.backspace = "indent,eol,start" 