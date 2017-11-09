set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required

let mapleader=","

map <C-n> :NERDTreeToggle<CR>

" Settings for power line
set laststatus=2

" Settings for ctrlp
let g:ctrlp_max_height=30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" split screen
set splitbelow
set splitright

" Navigation between split screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"set foldmethod=indent
"set foldlevel=99
"set clipboard=unnamed
set nofoldenable


" Quicksave command
"noremap <C-Z> :update<CR>
"vnoremap <C-Z> <C-C>:update<CR>
"inoremap <C-Z> <C-O>:update<CR>
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>

" Quick quit command
noremap <Leader>q :quit<CR> " Quit current window
noremap <Leader>Q :qa!<CR>  " Quit all windows

" Move between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Enable folding with the spacebar
nnoremap <space> za

let python_highlight_all=1
let g:SimpylFold_docstring_preview=1

colorscheme gruvbox
set background=dark
set cursorline
set number
set showmatch
set t_Co=256
set textwidth=79
set colorcolumn=80
set showmatch
set incsearch
set hlsearch


ino jj <esc>
vno v <esc>
syntax enable
hi Normal guibg=NONE ctermbg=NONE
" Program Configurations

autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2
filetype plugin indent on

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 		|
    \ set softtabstop=4		|
    \ set shiftwidth=4		|
    \ set textwidth=79		|
    \ set expandtab		|
    \ set autoindent		|
    \ set fileformat=unix	|
    \ set encoding=utf-8

highlight BadWhitespace guibg=red ctermbg=darkred

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Full stack development
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2	|
    \ set softtabstop=2	|
    \ set shiftwidth=2

filetype plugin indent on    " required
