let mapleader = ","

cmap W  w
cmap Wq wq
cmap w!! w !sudo tee % >/dev/null

nnoremap <CR> :noh<CR><CR>:<backspace>
nnoremap <F9> :Dispatch<CR>

" <Leader>s inserts the contents of ~/.gitpartner just before the first
" occurrence of ^Signed-off-by: then returns to the previous position. For
" inserting a co-author or similar into a commit message when pairing
map <Leader>s mugg/^Signed-off-by:<CR>k:noh<CR>:read ~/.gitpartner<CR>`u

