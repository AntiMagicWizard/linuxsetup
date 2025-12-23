" =========================
" Core
" =========================
set nocompatible

if has("termguicolors")
  set termguicolors
endif

syntax on
set showcmd
set number relativenumber
set nowrap
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on

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
    autocmd BufWritePre *.py,*.c,*.cpp,*.h,*.hpp call FormatBuffer()
augroup END

" =========================
" Automatically insert closing brackets  
" =========================
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ( ()<left>
inoremap " ""<left>
inoremap ' ''<left>

" Automatically insert indent new line when pressing enter between braces {}
inoremap {<CR> {<CR>}<Esc>O
