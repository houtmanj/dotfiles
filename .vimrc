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
"set statusline+=[WORKON=%{pythonworkon}]     " virtual env

" Show line number and cursor position
set ruler

" Display incomplete commands.
set showcmd


" Search stuff
set showmatch " show matching brackets
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch

" Indenting
set smartindent
set noautoindent 
"set cindent " Do c-style indenting

" Show tabs instead of spaces and any trailing whitespace
set list
set listchars=tab:>-,trail:-

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

