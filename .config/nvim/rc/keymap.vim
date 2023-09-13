" keymap
let mapleader = ' '
nnoremap <silent> <Leader>_ :source $MYVIMRC<CR>
nnoremap <silent> <Leader>w :w<CR>

nnoremap <silent> <Leader>o :wincmd p<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>n :nohlsearch<CR>

inoremap <expr> <C-c> has_key(environ(), 'zenhan') ? '<Cmd>call system("${zenhan} 0")<CR><C-c>' : '<C-c>'

nnoremap <silent> <Leader>no :e ~/note/note.md<CR>
nnoremap <silent> <Leader>ta :e ~/note/task.md<CR>

nnoremap <silent> <Leader>> :tabnext<CR>
nnoremap <silent> <Leader>< :tabprevious<CR>

nnoremap J 5j
nnoremap K 5k
nnoremap L $
nnoremap H ^
vnoremap J 5j
vnoremap K 5k
vnoremap L $
vnoremap H ^

nnoremap <Leader>P "0P
nnoremap <Leader>p "0p
nnoremap <Leader>r ciw<C-r>0<Esc>b

inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>

nnoremap > >>
nnoremap < <<
vnoremap > >><Esc>gv
vnoremap < <<<Esc>gv
