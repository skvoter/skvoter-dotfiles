set nocompatible	" required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Here come all plugins
Plugin 'tmhedberg/SimpylFold' 
Plugin 'vim-scripts/indentpython.vim' 
Plugin 'davidhalter/jedi-vim'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-bufferline'

call vundle#end()
filetype plugin indent on

set splitbelow
set splitright

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding enabling
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" Intendaion

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Extra whitespace flagging
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf8
set encoding=utf-8

colorscheme Tomorrow-Night-Bright
let python_highlight_all=1
syntax on

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set nu
