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

let g:clang_format#command      = 'clang-format'

call plug#begin('~/.nvim/cr')
" tools
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" editing
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/vim-clang-format'

" control
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'

" colour theme 
Plug 'NLKNguyen/papercolor-theme'

" syntax highlighting
Plug 'tikhomirov/vim-glsl'
Plug 'leafgarland/typescript-vim'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin indent on

autocmd VimEnter * if !argc() | NERDTree | endif

" YouCompleteMe key mappings
" nnoremap <cr> :YcmCompleter FixIt<cr>
" nnoremap <F2> :YcmCompleter RefactorRename 
" nnoremap <tab> :YcmDiags<cr>

vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" window switching
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

colo PaperColor
set bg=dark

