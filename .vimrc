python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set ff=unix
set encoding=utf-8
syntax on
au CursorHold,CursorHoldI * checktime
set autoread
set noswapfile
set updatetime=1

set nocompatible
set cmdheight=2
set showcmd

" search
set showmatch
set hlsearch
set incsearch

" tab and indent
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set autoindent
set cindent
set cinoptions=(0,u0,U0
set smarttab

set scrolloff=3

" tab completes
set foldmethod=indent
set wildmenu
set wildmode=list:longest,full

" visual and look
set rnu
set nu
set cursorline

" By default, the statusline (and therefore Powerline) only appears when there are multiple windows open.
" This enables it at all the time.
set laststatus=2

let g:powerline_pycmd="py"
let g:clang_format#command='clang-format'
let g:ycm_auto_trigger=1
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_use_clangd=0
let g:plug_timeout=600

let g:DoxygenToolkit_briefTag_pre="\\brief "
let g:DoxygenToolkit_paramTag_pre="\\param "
let g:DoxygenToolkit_returnTag="\\return "
let g:DoxygenToolkit_blockHeader="-------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="-------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Cracklings3D"
let g:DoxygenToolkit_licenseTag="GPL v3"

call plug#begin('~/.vim/cr')
Plug('https://github.com/scrooloose/nerdtree.git')
Plug('https://github.com/wellle/targets.vim.git')
Plug('https://github.com/leafgarland/typescript-vim.git')
Plug('https://github.com/rhysd/vim-clang-format.git')
Plug('https://github.com/tpope/vim-commentary.git')
Plug('https://github.com/tpope/vim-surround.git')
Plug('https://github.com/tpope/vim-repeat.git')
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

