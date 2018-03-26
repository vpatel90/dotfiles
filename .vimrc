set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'rakr/vim-one'

Plugin 'slim-template/vim-slim'

Plugin 'vim-syntastic/syntastic'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'sheerun/vim-polyglot'

Plugin 'airblade/vim-gitgutter'

Plugin 'mileszs/ack.vim'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plugin 'ervandew/supertab'

Plugin 'flazz/vim-colorschemes'

let g:ctrlp_map = '<c-p>'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" use ripgrep with fzf
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!tmp/*" --glob "!vendor/*" --glob "!log/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" JK
inoremap jk <ESC>

" Settings
set number
set relativenumber
set autoread
set title
set smarttab
set expandtab
set ttyfast
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set directory=~/.tmp
set laststatus=2
set updatetime=250
set wildignore+=*/.git/*,tmp/*/**,*.swp,log/*/**,vendor/*/**
set synmaxcol=200

autocmd BufWritePre * %s/\s\+$//e
" Color Scheme
colorscheme solarized
syntax enable

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Leader key and commands
let mapleader=","
nnoremap <leader>F :NERDTreeFind<CR>
nnoremap <leader>A :Ack!<SPACE>
nnoremap <leader>vv :vsplit<CR>
nnoremap <leader>hh :split<CR>
nnoremap <leader>a ^
nnoremap <leader>e $
nnoremap <leader>Q :qa!<CR>
nnoremap <leader>w <C-w>
noremap <C-f> :Find<space>
noremap <leader>H :set hlsearch<CR>
noremap <leader>HH :noh<CR>
noremap <leader>TT <C-]>


" Theme
let g:airline_theme='one'
let g:one_allow_italics = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set background=light
hi Normal ctermbg=none
