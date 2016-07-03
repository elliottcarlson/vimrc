" Run Pathogen
execute pathogen#infect()

" Don't enable vi compatibility mode
set nocompatible

" Turn on syntax highlighting
syntax on
" and show line numbers
set nu

" Enable file type detection and plugin loading
filetype on
filetype plugin on
filetype indent on

" Reload files changed outside of vim
set autoread

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

" Enable deletion over line breaks and auto indents
set backspace=indent,eol,start

" Don't unload abandoned buffers
set hidden

" Set unix line endings
set fileformat=unix
" Read unix and dos line endings
set fileformats=unix,dos

" Save up to 100 marks
" set viminfo='100,f1

" Enable lazy redraw when running macros, etc
set lazyredraw

" Search defaults
set incsearch
set hlsearch

" Keep cursor within 3 lines when scrolling
set scrolloff=3

" Indentation defaults
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4

" 80 column text width
set textwidth=80

" Some file type declarations
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd BufNewFile,BufRead *.es6 setlocal ft=javascript

" Save with ctrl-s
" nmap <c-s> :w<CR>
" imap <c-s> <Esc>:w<CR>a

" Color settings
colorscheme desert
set background=dark
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Highlight extra spaces in red
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
