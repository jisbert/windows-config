call plug#begin('~/vimfiles/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

set list

let g:airline_theme='molokai'

nnoremap <leader>n : NERDTreeFocus<CR>
nnoremap <C-n> : NERDTree<CR>
nnoremap <C-t> : NERDTreeToggle<CR>
