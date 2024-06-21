set clipboard=unnamed
" ---- cursor movements ----
imap jk <Esc>
map 0 ^
map - g_
nmap j gj
nmap k gk
imap <c-l> <right>
imap <c-h> <left>
imap <c-j> <Esc>gja
imap <c-k> <Esc>gka

map q :bd<cr>

" ---- Code formatting ----
" Alt key to move lines around
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
