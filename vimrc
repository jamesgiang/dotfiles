runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
colorscheme solarized
filetype on
filetype indent on
filetype plugin on
syntax on

set clipboard=unnamed
set background=dark
set guifont=Inconsolata\ for\ Powerline\ 10
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set hlsearch
set ignorecase
set smartcase
set incsearch
set relativenumber
set ruler
set splitbelow
set splitright
set autoread

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:tagbar_ctags_bin = "/usr/local/Cellar/ctags/5.8/bin/ctags"

map <C-Left> <Esc>:bp<CR>
map <C-Right> <Esc>:bn<CR>
map <C-n> <Esc>:tabnew
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd VimEnter * :IndentGuidesEnable
autocmd VimEnter * NERDTree
autocmd VimEnter * :execute "normal \<C-L>"
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
