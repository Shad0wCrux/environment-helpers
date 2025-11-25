" Matrix.vim - a simple green-on-black colorscheme
" To use, copy / move this file to:     ~/.vim/colors/matrix.vim
" Then reference it in your             ~/.vimrc file:
"                                       colorscheme matrix
"
"
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g : colors_name="matrix"

" Normal text: light green on black
hi Normal       ctermfg=10 ctermbg=0  guifg=#00ff5f guibg=#000000

" Comments: dim green
hi Comment      ctermfg=2  ctermbg=0  guifg=#008700 guibg=#000000 cterm=italic gui=italic

" Strings: bright green
hi String       ctermfg=10 ctermbg=0  guifg=#00ff5f guibg=#000000

" Keywords: cyan-ish
hi Keyword      ctermfg=14 ctermbg=0  guifg=#00ffff guibg=#000000 cterm=bold gui=bold

" Functions: bold green
hi Function     ctermfg=10 ctermbg=0  guifg=#00ff5f guibg=#000000 cterm=bold gui=bold

" Types
hi Type         ctermfg=10 ctermbg=0  guifg=#00ff87 guibg=#000000 cterm=bold gui=bold

" Numbers / constants
hi Constant     ctermfg=11 ctermbg=0  guifg=#d7ff5f guibg=#000000

" Operators (+, -, =, etc.)
hi Operator     ctermfg=15 ctermbg=0  guifg=#ffffff guibg=#000000

" Visual selection
hi Visual       ctermfg=0  ctermbg=10 guifg=#000000 guibg=#00ff5f

" Line numbers
hi LineNr       ctermfg=2  ctermbg=0  guifg=#005f00 guibg=#000000
hi CursorLineNr ctermfg=10 ctermbg=0  guifg=#00ff5f guibg=#000000 cterm=bold gui=bold

" Status line
hi StatusLine   ctermfg=0  ctermbg=10 guifg=#000000 guibg=#00ff5f cterm=bold gui=bold
hi StatusLineNC ctermfg=2  ctermbg=0  guifg=#008700 guibg=#000000

" Cursor line
hi CursorLine   ctermfg=NONE ctermbg=0 guifg=NONE guibg=#000000 cterm=underline

" Search highlight
hi Search       ctermfg=0  ctermbg=11 guifg=#000000 guibg=#d7ff5f cterm=bold gui=bold

" Popup menu
hi Pmenu        ctermfg=10 ctermbg=0  guifg=#00ff5f guibg=#000000
hi PmenuSel     ctermfg=0  ctermbg=10 guifg=#000000 guibg=#00ff5f

" Errors / TODO
hi Error        ctermfg=15 ctermbg=1  guifg=#ffffff guibg=#870000 cterm=bold gui=bold
hi Todo         ctermfg=11 ctermbg=0  guifg=#ffff5f guibg=#000000 cterm=bold gui=bold


