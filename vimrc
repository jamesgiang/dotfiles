runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
set background=dark
colorscheme solarized

set guifont=Inconsolata\ for\ Powerline\ 10
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

filetype on
filetype indent on
filetype plugin on
syntax on

set autoindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set hlsearch
set ignorecase
set smartcase
set incsearch
set number
" set relativenumber
set ruler
set splitbelow
set splitright

autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber
autocmd VimEnter * :IndentGuidesEnable
autocmd VimEnter * NERDTree
map <C-Left> <Esc>:bp<CR>
map <C-Right> <Esc>:bn<CR>
map <C-n> <Esc>:tabnew
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
