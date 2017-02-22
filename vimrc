set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Common
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'

"Code syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-pug'

"Colorscheme
Plugin 'tomasr/molokai'

call vundle#end()

" To install plugins :PluginInstall
" To update plugins :PluginUpdate
" Ti install and update :PluginInstall!

set number
syntax enable

colorscheme molokai
"let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set encoding=utf8

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set mouse=a
set hlsearch

"Indent Guide
set list lcs=tab:\|\ 

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_warning = ''
let g:airline_section_error = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1

let g:airline_theme='bubblegum'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-e> :NERDTreeToggle<cr>
map <C-d> :tabn<CR>
map <C-a> :tabp<CR>
map <C-w> :tabnew<CR>
map <C-f> :tabc<CR>
map <f3>  :noh<CR>
map <f2>  :set ic<CR>
map <f4>  :set noic<CR>

