" ==========================================================
" codeblocks-light.vim
" Code::Blocks–like light colorscheme for C/C++
" ==========================================================

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "codeblocks-light"

" =========================
" Base UI
" =========================
highlight Normal        guifg=#000000 guibg=#ffffff
highlight LineNr        guifg=#7f7f7f guibg=#ffffff
highlight CursorLineNr  guifg=#000000 guibg=#e5e5e5

" =========================
" Preprocessor (#include, #define)
" =========================
highlight PreProc       guifg=#008000 gui=NONE
highlight Include       guifg=#008000 gui=NONE
highlight Define        guifg=#008000 gui=NONE
highlight Macro         guifg=#008000 gui=NONE

" =========================
" Keywords (return, if, for)
" =========================
highlight Statement     guifg=#000080 gui=NONE
highlight Keyword       guifg=#000080 gui=NONE
highlight Conditional  guifg=#000080 gui=NONE
highlight Repeat       guifg=#000080 gui=NONE

" =========================
" Types (int, uint32_t)
" =========================
highlight Type          guifg=#0000a0 gui=NONE
highlight StorageClass  guifg=#0000a0 gui=NONE
highlight Typedef       guifg=#0000a0 gui=NONE

" =========================
" Constants (numbers, NULL)
" =========================
highlight Constant      guifg=#ff00ff gui=NONE
highlight Number        guifg=#ff00ff gui=NONE
highlight Boolean       guifg=#ff00ff gui=NONE
highlight Character     guifg=#ff00ff gui=NONE

" =========================
" Strings
" =========================
highlight String        guifg=#800000 gui=NONE

" =========================
" Identifiers & functions
" =========================
highlight Identifier    guifg=#000000 gui=NONE
highlight Function      guifg=#000000 gui=NONE

" =========================
" Operators & punctuation
" =========================
highlight Operator      guifg=#000000 gui=NONE
highlight Delimiter     guifg=#000000 gui=NONE

" =========================
" Comments
" =========================
highlight Comment       guifg=#ff00ff gui=NONE

