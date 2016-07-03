" vimrc
"

set backspace=indent,eol,start
set bs=2
set colorline  						" Highlight the current line
set expandtab
set nofoldenable						" never code fold!#@
set formatoptions=qrn1
set guioptions-=T						" No GUI menu
set guioptions-=r						" No scrollbar
set guioptions-=R						" No scrollbar
set guioptions-=L						" No lefthand scrollbar either
set hidden
set history=1000						" History should be big
set ignorecase
set incsearch
set listchars=tab:>-,trail:?,eol:$
set nohlsearch
set ruler							" Show coordinates in bottom right of status
set scrolloff=10
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set tabstop=4
set textwidth=80
set virtualedit=all
set visualbell
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn					" Ignore Version control
set wildignore+=*.aux,*.out,*.toc				" Ignore LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg			" Ignore binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest		" Ignore compiled object files
set wildignore+=*.spl						" Ignore compiled spelling word lists
set wildignore+=*.sw?						" Ignore Vim swap files
set wildignore+=*.DS_Store					" Ignore OSX bullshit
set wildignore+=*.luac						" Ignore Lua byte code
set wildignore+=migrations					" Ignore Django migrations
set wildignore+=*.pyc						" Ignore Python byte code
set wrap


map! <S-Insert> <MiddleMouse>					" map middle-click to paste
map <F11> :tabp<CR>						" map F11 to go to previous tab
map <F12> :tabn<CR>						" map F12 to go to next tab

nnoremap ' ` 
nnoremap ` ' 
let mapleader = "," 

nnoremap <C-e> 3<C-e>
nnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>
vnoremap <C-y> 3<C-y>

filetype off
filetype plugin indent on
set nocompatible

" Display
syntax on
colorscheme desert
set background=dark
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Highlight extra spaces in red
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/




set nu
autocmd FileType ruby     setlocal shiftwidth=2 tabstop=2
autocmd FileType html     setlocal shiftwidth=4 tabstop=4
autocmd FileType eruby    setlocal shiftwidth=2 tabstop=2
autocmd FileType py	  setlocal shiftwidth=4 tabstop=4 expandtab
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead *.py set filetype=python
autocmd BufWritePre *.py :%s/\s\+$//e


"Command T
nmap <silent> <Leader>f :CommandTFlush<CR>
let g:CommandTAcceptSelectionTabMap='<CR>'

"Nerd Tree
autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.DS_Store$', '\.gitignore$', '\.vagrant$', '\.backups$', '\.git$', '\.swp$', '\.swo$']
let NERDTreeShowBookmarks=0
let NERDTreeShowPressForHelp=0
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:NERDTreeMapOpenInTab='<CR>'
let NERDTreeShowPressForHelp=0
let tree_up_dir_line = '..'
map <F2> <plug>NERDTreeTabsToggle<CR>

let python_space_errors=1


autocmd VimEnter * NERDTree


:cd ~\Desktop\Dev\
