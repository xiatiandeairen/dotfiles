-- 自动保存文件（退出插入模式时）
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "silent! write",
})

-- 设置特定文件类型的缩进
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = "setlocal shiftwidth=4 tabstop=4 expandtab",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  command = "setlocal shiftwidth=2 tabstop=2 expandtab",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  command = "setlocal shiftwidth=2 tabstop=2 expandtab",
})