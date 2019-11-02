autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType make setlocal noexpandtab nolist   " Makefiles use tabs
autocmd FileType spec setlocal noexpandtab nolist ts=16 sw=16 sts=16

" Always start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
