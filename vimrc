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

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd VimEnter * :IndentGuidesEnable
