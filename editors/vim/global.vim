set nocompatible
set background=dark

if !has('win32') && !has('win64')
  set term=$TERM
endif

filetype off
filetype plugin indent off
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

filetype plugin indent on
syntax on

set mouse-=a
set history=1000
set scrolloff=8

scriptencoding utf-8