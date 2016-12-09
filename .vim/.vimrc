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

hi Normal guibg=NONE ctermbg=NONE

filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 commentstring=<!--%s-->
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2
