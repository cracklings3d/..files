python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set ff=unix
set encoding=utf-8
syntax on

set nocompatible
set cmdheight=2
set showcmd

" search
set showmatch

" tab and indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noexpandtab
set autoindent
set smarttab

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
" filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif

nnoremap <cr> :YcmCompleter FixIt<cr>

" comment and vim-commentary
nnoremap <C-/> :Commentary<cr>
vnoremap <C-/> :Commentary<cr>


colo one
set bg=dark

