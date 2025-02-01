"colorscheme badwolf         " colors

syntax enable

" compatibility for xfce4-terminal colors from vim-airline
" otherwise they are broken
" possibly not necessary outside of that terminal
set t_Co=256

" always show vim-airline
set laststatus=2

" indicate current line
set cursorline

set number relativenumber " line numbering
"set showcmd "always show cmdline
"set cursorline " underline the cursor line

filetype indent on

set wildmenu  " menu completion on

set showmatch " match parentheses

" this is necessary for vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

call plug#begin('~/.vim/bundle')

"Plug 'gmarik/Vundle.vim'

Plug 'bling/vim-airline'
Plug 'shawncplus/skittles_berry'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'chase/vim-ansible-yaml'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'othree/html5.vim'
Plug 'blueyed/smarty.vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'

call plug#end()

"call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" " Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

colorscheme skittles_berry


" fuzzy search enable
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" 
nnoremap <F2> :set invpaste paste?<CR>
nnoremap <F3> :wnext<CR>


set pastetoggle=<F2>
set showmode

" ability to move around with hjkl in insert mode
" just use alt
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

" sane tabbing, and replacing tabs with spaces
:set tabstop=4 shiftwidth=4 expandtab

" alias for saving as root
"command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

"copy to Xclipboard and also to primary selection
vnoremap <C-c> "*y :let @+=@*<CR>
"paste from primary selection
"map <C-v> "yP

let g:user_emmet_leader_key='<C-A>'
