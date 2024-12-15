-- Make sure to setup `mapleader` and `maplocalleader` before
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存文件
vim.api.nvim_set_keymap('n', '<leader>W', ':w!<cr>', { noremap = true, silent = true })

-- 退出文件
vim.api.nvim_set_keymap('n', '<leader>Q', ':q!<cr>', { noremap = true, silent = true })

-- 切换到下一个 buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bn<cr>', { noremap = true, silent = true })

-- 切换到上一个 buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':bp<cr>', { noremap = true, silent = true })

-- 关闭当前 buffer
vim.api.nvim_set_keymap('n', '<leader>bc', ':bd!<cr>', { noremap = true, silent = true })

-- 切换到下一个 tab
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabn<cr>', { noremap = true, silent = true })

-- 打开新 tab
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnew<cr>', { noremap = true, silent = true })

-- 关闭当前 tab
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<cr>', { noremap = true, silent = true })

-- 切换到上一个 tab
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabp<cr>', { noremap = true, silent = true })

-- 垂直分屏
vim.api.nvim_set_keymap('n', '<leader>wv', '<C-W>v', { noremap = true, silent = true })

-- 水平分屏
vim.api.nvim_set_keymap('n', '<leader>ws', '<C-W>s', { noremap = true, silent = true })

-- 关闭当前窗口
vim.api.nvim_set_keymap('n', '<leader>wc', ':close<cr>', { noremap = true, silent = true })

-- 关闭所有其他窗口
vim.api.nvim_set_keymap('n', '<leader>wo', '<C-W>o', { noremap = true, silent = true })

-- 使用 Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l 切换窗口
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', { noremap = true, silent = true })
