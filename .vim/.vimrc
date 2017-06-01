colorscheme gruvbox
set background=dark
set cursorline
set t_Co=256
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
set number
set showmatch
set incsearch
set hlsearch
syntax enable

ino jj <esc>
vno v <esc>
hi Normal guibg=NONE ctermbg=NONE
filetype off
autocmd Filetype html setlocal shiftwidth=2 tabstop=2 softtabstop=2 commentstring=<!--%s-->
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype c setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype json setlocal shiftwidth=2 tabstop=2 softtabstop=2
filetype plugin indent on
