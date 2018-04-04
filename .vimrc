" ======================= General Config ==========================

set number				" Create Line Numbers
set backspace=start,indent,eol		" Begins indent
set tabstop=8				" Moves 8 spaces when tab is used
set mouse-=a

" ========================= Color Theme ===========================

syntax on
set background=dark
color darkblue

" ============================ Vundle =============================

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'


" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'bling/vim-airline'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-repeat'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-surround'



" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" ====================== Mapping/Navigating ===========================

" open vimrc with vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" use ,v to make a new vertical split, ,s for horiz, ,x to close a split
noremap <leader>v <c-w>v<c-w>l
noremap <leader>s <c-w>s<c-w>j
noremap <leader>x <c-w>c

" use ctrl-h/j/k/l to switch between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" ==================== Abbreviation/Shortcuts ========================

:ab usenamestd using namespace std            " Abbreviation for using namespace std;

:ab p cout <<         			      " p for cout << since it is like print

iab com /*<CR><CR>/<Up>			      " C-style comments

abbr forl for (int i = 0; i < ; i++) {        " You always need for loops 


