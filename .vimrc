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

let g:clang_format#command='clang-format-7'
let g:ycm_auto_trigger=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:plug_timeout=600

call plug#begin('~/.vim/cr')
Plug('https://github.com/scrooloose/nerdtree.git')
Plug('https://github.com/wellle/targets.vim.git')
Plug('https://github.com/leafgarland/typescript-vim.git')
Plug('https://github.com/rhysd/vim-clang-format.git')
Plug('https://github.com/tpope/vim-commentary.git')
Plug('https://github.com/tpope/vim-surround.git')
Plug('https://github.com/valloric/youcompleteme.git')
Plug('https://github.com/ctrlpvim/ctrlp.vim.git')
Plug('https://github.com/mattn/emmet-vim.git')
Plug('https://github.com/NLKNguyen/papercolor-theme.git')
call plug#end()

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

