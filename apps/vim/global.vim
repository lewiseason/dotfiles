set nocompatible

if !has('win32') && !has('win64')
  set term=$TERM
endif

filetype plugin indent on
syntax on

set mouse-=a
set history=1000
set scrolloff=8

scriptencoding utf-8
