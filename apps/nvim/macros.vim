nnoremap <CR> :noh<CR><CR>:<backspace>
nnoremap <F9> :Dispatch<CR>

" <Leader>s inserts the contents of ~/.gitpartner just before the first
" occurrence of ^Signed-off-by: or ^# then returns to the previous position.
" For inserting a co-author or similar into a commit message when pairing
" (Also skip empty lines and lines beginning with #)
map <Leader>s mugg/^\(Signed-off-by:\\|#\)<CR>k:noh<CR>:read!grep -vE '^\#\|^$' ~/.gitpartner<CR>`u
map <Leader>a mugg/^\(Signed-off-by:\\|#\)<CR>k:noh<CR>:read!echo "Acked-by: $(git config user.name) <$(git config user.email)>"<CR>`u

map <Leader>g :GitGutterToggle<CR>
map <Leader>r :RuboCop<CR>
map <Leader>n :set number! number?<CR>
map <Leader>t :Rake test TEST=%<CR>
