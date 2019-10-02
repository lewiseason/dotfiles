let g:deoplete#enable_at_startup = 1
let g:gitgutter_realtime=1
set updatetime=500

let mapleader = ","

filetype plugin on
syntax on

" Style for popup menus
hi Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

set scrolloff=4
set sidescrolloff=8
set sidescroll=1

set nonumber nowrap linebreak showmode
set list listchars=trail:~

set cursorline
hi CursorLine cterm=bold

set modelines=1

set ruler
set showcmd

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab autoindent preserveindent

" Searching
set showmatch
set hlsearch
set ignorecase smartcase

" Aliases
cmap Q q
cmap Wq wq
cmap W w
