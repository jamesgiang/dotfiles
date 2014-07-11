" Plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on

" Editor settings
filetype on
filetype indent on
filetype plugin on
set mouse=a
set clipboard=unnamed
set encoding=utf-8
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
set autoread
set fillchars+=stl:\ ,stlnc:\
set title
set hidden
set vb
set wildignore+=*.a,*.pyc,*.o,*.orig
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.sw?,*.tmp
set wildignore+=**/node_modules/*,**/bower_components/*

" Backups
set nobackup
set nowb
set noswapfile

" UI
set guifont=Inconsolata\ for\ Powerline\ 10
set background=dark
colorscheme solarized
set t_Co=256
set cursorline

" Indent/Tabs
set autoindent
set copyindent
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Ruler
set relativenumber
set ruler

" Plugin settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"

" Key bindings
map <C-Left> <Esc>:bp<CR>
map <C-Right> <Esc>:bn<CR>
map <space> /
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
noremap K <nop>
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Autocmds
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd VimEnter * :IndentGuidesEnable
autocmd VimEnter * NERDTree
autocmd VimEnter * :execute "normal \<C-L>"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
