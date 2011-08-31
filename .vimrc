" Initialize
set nocompatible

" encode
set encoding=utf-8

" Search
set ignorecase
set smartcase
set wrapscan
set incsearch

" Syntax
syntax on
" colorscheme Green

colorscheme IPU_Air_Green

" Display
set number
set ruler
set cmdheight=1
set tabstop=4
set shiftwidth=4
set list

" Edit
set smartindent
set smartindent
" set list
set showmatch

set expandtab

" Backup
set backup
set backupdir=~/.vim/backup


if has("autocmd")
    " ファイルタイプ別インデント、プラグインを有効にする
"    filetype plugin indent on
    " カーソル位置を記憶する
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif
