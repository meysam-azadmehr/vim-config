set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"plugins is here..
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'preservim/nerdcommenter'

call vundle#end()            " required

filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" for python file better read 
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

"for bad space 
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
 highlight BadWhitespace ctermbg=red guibg=darkred

" for YouCompleteMe plugin better 
let g:ycm_autoclose_preview_window_after_completion=1
"map d  :YcmCompleter GoToDefinitionElseDeclaration


let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set noerrorbells

set cursorline
set termguicolors
set signcolumn=yes
set scrolloff=7
set sidescrolloff=20

"color scheme
colorscheme gruvbox
set bg=dark

" for persian word
set termbidi

"for exit from insert mode
inoremap jk <ESC>

set term=xterm-256color

set encoding=utf-8
