set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'digitaltoad/vim-pug'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'sickill/vim-monokai'

call vundle#end()

" To install plugins just enter :PluginInstall

set number
syntax enable

"set background=dark
"colorscheme monokai

set encoding=utf8

set expandtab
set softtabstop=2
set autoindent

"set gdefault
"set hlsearch
"set ignorecase
set smartcase
"set incsearch
"set showmatch

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-e> :NERDTreeToggle<cr>
map  <C-d> :tabn<CR>
map  <C-a> :tabp<CR>
map  <C-w> :tabnew<CR>
map  <C-r> :tabc<CR>
