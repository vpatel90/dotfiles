set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

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

" JK
inoremap jk <ESC>

" Settings
set number
set ttyfast
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set directory=~/.tmp

" Color Scheme
syntax enable
set background=dark
colorscheme solarized

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Whitespace stuff
let g:indentLine_char='•'
let g:indentLine_leadingSpaceChar='•'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_color_term=237
