set nocompatible

" code
set encoding=utf-8

" Search
set ignorecase
set smartcase
set wrapscan
set incsearch
syntax off


" Display
set number
set ruler
set tabstop=4
set shiftwidth=4


" Edit
set smartindent
set smartindent
" set list
set showmatch

set noexpandtab

" Backup
set backup
set backupdir=~/.vim_backup


if has("autocmd")
    " ファイルタイプ別インデント、プラグインを有効にする
"    filetype plugin indent on
    " カーソル位置を記憶する
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif
