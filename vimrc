" =========================
" Core
" =========================
set nocompatible
set termguicolors
syntax on
set number relativenumber
set nowrap
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
    let v = winsaveview()
    silent! normal! gg=G
    call winrestview(v)
endfunction

augroup format_on_save
    autocmd!
    autocmd FileType python setlocal equalprg=/usr/bin/autopep8\ -
    autocmd FileType c,cpp setlocal equalprg=clang-format
    autocmd BufWritePre *.py,*.c,*.cpp call FormatBuffer()
augroup END

