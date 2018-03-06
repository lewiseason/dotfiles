autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType make setlocal noexpandtab nolist   " Makefiles use tabs

" Always start on the first line of a git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
