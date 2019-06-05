python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

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

let g:clang_format#command = 'clang-format-7'
let g:ycm_auto_trigger=1

filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif

" YouCompleteMe key mappings
nnoremap <cr> :YcmCompleter FixIt<cr>
nnoremap <F2> :YcmCompleter RefactorRename 

" window switching
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

colo PaperColor
set bg=dark

