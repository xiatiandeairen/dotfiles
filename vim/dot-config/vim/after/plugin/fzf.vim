" fzf
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fg :GFiles<CR>
nnoremap <Leader>f? :GFiles?<CR>
nnoremap <Leader>fh :History<CR>
nnoremap <Leader>f: :History:<CR>
nnoremap <Leader>f/ :History/<CR>
nnoremap <Leader>fl :Lines<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>ft :Tags<CR>
nnoremap <Leader>fa :Ag<CR>
nnoremap <leader>fr :Rg<CR>
nnoremap <Leader>fC :Commits<CR>
nnoremap <leader>fc :Changes<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fj :Jumps<CR>

" Command	List
" :Files [PATH]	Files (runs $FZF_DEFAULT_COMMAND if defined)
" :GFiles [OPTS]	Git files (git ls-files)
" :GFiles?	Git files (git status)
" :Buffers	Open buffers
" :Colors	Color schemes
" :Ag [PATTERN]	ag search result (ALT-A to select all, ALT-D to deselect all)
" :Rg [PATTERN]	rg search result (ALT-A to select all, ALT-D to deselect all)
" :RG [PATTERN]	rg search result; relaunch ripgrep on every keystroke
" :Lines [QUERY]	Lines in loaded buffers
" :BLines [QUERY]	Lines in the current buffer
" :Tags [PREFIX]	Tags in the project (ctags -R)
" :BTags [QUERY]	Tags in the current buffer
" :Changes	Changelist across all open buffers
" :Marks	Marks
" :Jumps	Jumps
" :Windows	Windows
" :Locate PATTERN	locate command output
" :History	v:oldfiles and open buffers
" :History:	Command history
" :History/	Search history
" :Snippets	Snippets (UltiSnips)
" :Commits [LOG_OPTS]	Git commits (requires fugitive.vim)
" :BCommits [LOG_OPTS]	Git commits for the current buffer; visual-select lines to track changes in the range
" :Commands	Commands
" :Maps	Normal mode mappings
" :Helptags	Help tags 1
" :Filetypes	File types
