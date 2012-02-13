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
" set statusline+=%2*%-3.3n%0*\                " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%1*%m%r%w%0*               " flags
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


