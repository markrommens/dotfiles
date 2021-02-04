let mapleader = ","

" Unmap the arrow keys
no  <down>  <Nop>
no  <left>  <Nop>
no  <right> <Nop>
no  <up>    <Nop>
    
ino <down>  <Nop>
ino <left>  <Nop>
ino <right> <Nop>
ino <up>    <Nop>

vno <down>  <Nop>
vno <left>  <Nop>
vno <right> <Nop>
vno <up>    <Nop>

map Y y$

"This unsets the "last search pattern" register by hitting return
nnoremap <esc> :noh<CR><esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader><kPlus> :vertical resize +5<CR>
nnoremap <silent> <leader><kMinus> :vertical resize -5<CR>

" Split vertically and then move to that split
nnoremap <leader>v :vsp newfile<CR>
"nnoremap <leader>v <C-w>v<C-w>l

" Toggle paste mode mode with <Leader>pp
nnoremap <Leader>pp :set paste!<CR>

" Indent whole file while preserving cursor location with <Leader>=
nnoremap <Leader>= m'gg=G`'

" Add a semicolon to the current line without moving the cursor with <Leader>;
nnoremap <Leader>; m'A;<ESC>`'

" Source vimrc with <Leader>vc
nnoremap <Leader>vc :source ~/.vimrc<CR>:echo "Reloaded .vimrc"<CR>

" Clear trailing whitespace with <Leader>cw
nnoremap <Leader>cw :%s/\s\+$//g<CR>:nohlsearch<CR>
" Toggle paste mode mode with <Leader>pp
nnoremap <Leader>pp :set paste!<CR>

" Indent whole file while preserving cursor location with <Leader>=
nnoremap <Leader>= m'gg=G`'

" Add a semicolon to the current line without moving the cursor with <Leader>;
nnoremap <Leader>; m'A;<ESC>`'

" Source vimrc with <Leader>vc
nnoremap <Leader>vc :source ~/.vimrc<CR>:echo "Reloaded .vimrc"<CR>

" Clear trailing whitespace with <Leader>cw
nnoremap <Leader>cw :%s/\s\+$//g<CR>:nohlsearch<CR>
