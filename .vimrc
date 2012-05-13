" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'rails.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'thinca/vim-quickrun'


" neocomplcache
let g:neocomplcache_enable_at_startup = 3
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" encode
set encoding=utf-8

" Search
set ignorecase
set smartcase
set wrapscan
set incsearch

" Syntax
syntax on
filetype plugin indent on
" colorscheme Green

colorscheme IPU_Air_Green

" Display
set number
set ruler
set cmdheight=1
set tabstop=4
set shiftwidth=4
set list
set hlsearch

" Edit
set smartindent
filetype on
filetype indent on
filetype plugin on

" set list
set showmatch
set expandtab

" Backup
set backup
set backupdir=~/.vim/backup

if has("autocmd")
    " ファイルタイプ別インデント、プラグインを有効にする
    filetype plugin indent on
    " カーソル位置を記憶する
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif

" ruby
au FileType ruby set ts=2 sw=2 expandtab

" Java (Android)
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
