"colorscheme badwolf         " colors

syntax enable

" compatibility for xfce4-terminal colors from vim-airline
set t_Co=256

" always show vim-airline
set laststatus=2

set number " line numbering
" set showcmd "always show cmdline
"set cursorline " underline the cursor line

filetype indent on

set wildmenu  " menu completion on

set showmatch " match parentheses

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'

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
