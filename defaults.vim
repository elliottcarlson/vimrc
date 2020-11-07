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

" 120 column text width
set textwidth=120

" Set a different backup copy directory
set backupdir=~/.vim_backupcopy
set backupcopy=yes

" Configure ale linters
let g:ale_linters = {
\ 'typescript': ['tsserver']
\}
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}


" Some file type declarations
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd BufNewFile,BufRead *.es6 setlocal ft=javascript

" Editorconfig and fugutive compativility config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers=['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

" Syntastic and airline compatibility
let g:airline#extensions#syntastic#enabled = 1

" Color settings
colorscheme desert
set background=dark

let &colorcolumn="80,".join(range(120,999),",")
" let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Highlight extra spaces in red
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
