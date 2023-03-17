set scrolloff=24
set hls
set ic

let mapleader = " "

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap jk <ESC>
vnoremap jk <ESC>

" Alt+Up, Alt+Down to move highlighted text up and down
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Shift+Up, Shift+Down arrow select lines
nnoremap <S-Up> Vk
vnoremap <S-Up> k

nnoremap <S-Down> Vj
vnoremap <S-Down> j
