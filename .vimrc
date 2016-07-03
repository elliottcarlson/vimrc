" Run Pathogen
execute pathogen#infect()

set nu

syntax on
colorscheme desert
set background=dark
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Highlight extra spaces in red
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

