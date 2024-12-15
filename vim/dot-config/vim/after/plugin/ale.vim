" 启用 ALE 插件
let g:ale_enabled = 1

" 启用 Linting 设置
let g:ale_linters = {
  \   'javascript': ['eslint', 'jshint'],
  \   'lua': ['luacheck'],
  \   'c': ['clang', 'gcc'],
  \}

" 启用自动修复功能
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \   'javascript': ['prettier'],
  \   'lua': ['luarocks'],
  \   'c': ['clang-format'],
  \}

" 启用 Linting 时机设置
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'

" 启用补全功能
let g:ale_completion_enabled = 1
let g:ale_completer = ['javascript', 'lua', 'c']
let g:ale_completion_delay = 100

" 配置快捷键
nnoremap <silent> <Leader>e :ALENext<CR>
nnoremap <silent> <Leader>E :ALEPrevious<CR>
nnoremap <silent> <Leader>d :ALEDetail<CR>
nnoremap <silent> <Leader>l :ALELint<CR>

" 配置路径设置（根据需要调整）
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_lua_luacheck_executable = 'luacheck'
let g:ale_c_clang_executable = 'clang'
let g:ale_c_gcc_executable = 'gcc'