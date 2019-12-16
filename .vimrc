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
Plug 'scrooloose/nerdtree.git'
Plug 'wellle/targets.vim.git'
Plug 'leafgarland/typescript-vim.git'
Plug 'rhysd/vim-clang-format.git'
Plug 'tpope/vim-commentary.git'
Plug 'tpope/vim-surround.git'
Plug 'tpope/vim-repeat.git'
Plug 'valloric/youcompleteme.git'
Plug 'ctrlpvim/ctrlp.vim.git'
Plug 'mattn/emmet-vim.git'
Plug 'NLKNguyen/papercolor-theme.git'
Plug 'tikhomirov/vim-glsl.git'
Plug 'junegunn/vim-easy-align'
call plug#end()

filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif

" YouCompleteMe key mappings
nnoremap <cr> :YcmCompleter FixIt<cr>
nnoremap <F2> :YcmCompleter RefactorRename 
nnoremap <tab> :YcmDiags<cr>

" window switching
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

colo PaperColor
set bg=dark

