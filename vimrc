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
" Python formatting via = and on save
" =========================
augroup python_format
    autocmd!
    " Use autopep8 for = operator
    autocmd FileType python setlocal equalprg=/usr/bin/autopep8\ -
    " Format entire file on save
    autocmd BufWritePre *.py silent! normal! gg=G
augroup END

" =========================
" C/C++ formatting via = and on save
" =========================
augroup cpp_format
    autocmd!
    " Use clang-format for = operator
    autocmd FileType c,cpp setlocal equalprg=clang-format
    " Format entire file on save
    autocmd BufWritePre *.c,*.cpp silent! normal! gg=G
augroup END

