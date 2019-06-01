syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noexpandtab
set autoindent
set foldmethod=indent
set wildmenu
set wildmode=list:longest,full

set rnu
set nu

let g:airline_powerline_fonts=1

"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif

"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = 'L'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = ' '

let g:clang_format#command = 'clang-format-7'

execute pathogen#infect()
filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif

nnoremap <cr> :YcmCompleter FixIt<cr>

colo one
set bg=dark

