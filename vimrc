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
" To install and update :PluginInstall!

set number
syntax enable

"Theme config
colorscheme molokai
"let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set encoding=utf8
set termencoding=utf-8

"Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

"Autoupdate file when it changes
set autoread

"Highlighting
set incsearch
set hlsearch
set cursorline

"Enable mouse
set mouse=a

"Indent Guide
set list lcs=tab:\|\ 

"Airline
set laststatus=2
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

"NerdTree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"HotKeys

map <C-e> :NERDTreeToggle<cr>

"Next tab
map <C-d> :tabn<CR>

"Previous tab
map <C-a> :tabp<CR>

"New tab
map <C-w> :tabnew<CR>

"Close tab
map <C-f> :tabc<CR>

"Remove search highlight
map <f3>  :noh<CR>

"Case sensitive search
map <f2>  :set ic<CR>

"Turn off case sensitive search
map <f4>  :set noic<CR>

"Switch between splitted windows using Alt+arrow key
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

