" =========================
" Core
" =========================
set nocompatible
set termguicolors
syntax on
set number relativenumber
set nowrap
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab

" =========================
" Load colorscheme
" =========================
colorscheme codeblocks-light

" =========================
" C-specific tuning
" =========================
let g:c_syntax_for_h = 1

" =========================
" Code Formatting 
" =========================
function! FormatBuffer()
    if &equalprg == ''
        echoerr "No external formatter set for this filetype"
        return
    endif

    let v = winsaveview()
    silent! execute '%!'.&equalprg
    call winrestview(v)
endfunction

augroup format_on_save
    autocmd!
    autocmd FileType python setlocal equalprg=/usr/bin/autopep8\ -
    autocmd FileType c,cpp setlocal equalprg=clang-format
    autocmd BufWritePre *.py,*.c,*.cpp call FormatBuffer()
augroup END

