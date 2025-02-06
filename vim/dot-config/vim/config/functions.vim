let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

function! CreateDirectory()
    let dir_name = input('Directory Name: ')
    if !isdirectory(dir_name)
        call mkdir(dir_name, "p")
        echo "Directory created: " . dir_name
    else
        echo "Directory already exists: " . dir_name
    endif
endfunction

function! CreateFile()
    let file_name = input('File Name: ')
    if !filereadable(file_name) && !isdirectory(file_name)
        execute 'edit' file_name
        echo "File created: " . file_name
    else
        echo "File already exists or directory with the same name exists: " . file_name
    endif
endfunction