set scrolloff=24
set hls
set ic

let mapleader = " "

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap jk <ESC>
vnoremap jk <ESC>

" Shift+j, Shift+k to move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
