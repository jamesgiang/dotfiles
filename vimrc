runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
set background=dark
colorscheme solarized

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
set relativenumber
set ruler
set splitbelow
set splitright

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd VimEnter * :IndentGuidesEnable
autocmd VimEnter * NERDTree
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

