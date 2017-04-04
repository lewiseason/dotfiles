set nonumber
set nowrap
set linebreak
set list listchars=trail:~
set showmode

" Highlight current line in red
set cursorline
hi CursorLine cterm=bold

" Observe modelines in files
set modelines=1

" Update git gutter when I stop typing
let g:gitgutter_realtime = 1
set updatetime=200

" Colours for popup menues (such as YCM)
hi Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
