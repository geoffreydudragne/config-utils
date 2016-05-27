"General options
set nocompatible
set mouse=a
set number
set showmode
set showmatch
set nobackup
syntax enable
set smartindent
set autoindent  "will keep indentation level from previous line
set expandtab  "will convert tabs to spaces
set shiftwidth=4  "will affect block indentation with >> and <<
set softtabstop=4  "sets the length of soft tab in spaces
set tabstop=8  "sets the width of tab character

set linebreak "to avoid wrapping in the middle of words

"Search options
set ignorecase
set smartcase
set hlsearch
set wrapscan
set incsearch

"add filetypes on launch
filetype on
au BufNewFile,BufRead *.djhtml setfiletype htmldjango

"theme
colorscheme desert
set background=dark
