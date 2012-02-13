call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set nocompatible
set autoread
set backspace=indent,eol,start

set ruler
set incsearch
set expandtab
set tabstop=2

set completeopt=longest,menuone,preview
set wildmode=list:longest,full

set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
" set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
set statusline+=%#warningmsg#                " syntastic warning
set statusline+=%{SyntasticStatuslineFlag()} " syntastic status flag
set statusline+=%{fugitive#statusline()}     " fugutive git info
set statusline+=[WORKON=%{pythonworkon}]     " virtual env

set statusline=
" set statusline+=%2*%-3.3n%0*\                " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%1*%m%r%w%0*               " flags
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" Apply g:pythonworkon to statusline
"
