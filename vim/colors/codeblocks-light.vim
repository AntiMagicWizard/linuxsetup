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
highlight Normal        guifg=#000000 guibg=#ffffff   " black on white
highlight LineNr        guifg=#7f7f7f guibg=#ffffff   " gray on white
highlight CursorLineNr  guifg=#000000 guibg=#e5e5e5   " black on light gray

" =========================
" Preprocessor (#include, #define)
" =========================
highlight PreProc       guifg=#008000 gui=NONE       " green
highlight Include       guifg=#008000 gui=NONE       " green
highlight Define        guifg=#008000 gui=NONE       " green
highlight Macro         guifg=#008000 gui=NONE       " green

" =========================
" Keywords (return, if, for)
" =========================
highlight Statement     guifg=#000080 gui=NONE       " navy blue
highlight Keyword       guifg=#000080 gui=NONE       " navy blue
highlight Conditional  guifg=#000080 gui=NONE       " navy blue
highlight Repeat       guifg=#000080 gui=NONE       " navy blue

" =========================
" Types (int, uint32_t)
" =========================
highlight Type          guifg=#0000a0 gui=NONE       " dark blue
highlight StorageClass  guifg=#0000a0 gui=NONE       " dark blue
highlight Typedef       guifg=#0000a0 gui=NONE       " dark blue

" =========================
" Constants (numbers, NULL)
" =========================
highlight Constant      guifg=#ff00ff gui=NONE       " magenta
highlight Number        guifg=#ff00ff gui=NONE       " magenta
highlight Boolean       guifg=#ff00ff gui=NONE       " magenta
highlight Character     guifg=#ff00ff gui=NONE       " magenta

" =========================
" Strings
" =========================
highlight String        guifg=#800000 gui=NONE       " maroon

" =========================
" Identifiers & functions
" =========================
highlight Identifier    guifg=#000000 gui=NONE       " black
highlight Function      guifg=#000000 gui=NONE       " black

" =========================
" Operators & punctuation
" =========================
highlight Operator      guifg=#000000 gui=NONE       " black
highlight Delimiter     guifg=#000000 gui=NONE       " black

" =========================
" Comments
" =========================
highlight Comment       guifg=#ff00ff gui=NONE       " magenta

