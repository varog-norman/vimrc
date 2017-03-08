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
Plugin 'w0ng/vim-hybrid'

call vundle#end()

" To install plugins :PluginInstall
" To update plugins :PluginUpdate
" To install and update :PluginInstall!

set number
syntax enable
set noswapfile

"Theme config
colorscheme hybrid
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
let g:indentLine_faster = 1

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

let g:airline_theme='raven'

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

"Switch between splitted windows using Alt + arrow key
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Switch between splitted windows using Shift + arrow key (Mac)
nmap <S-Up> :wincmd k<CR>
nmap <S-Down> :wincmd j<CR>
nmap <S-Left> :wincmd h<CR>
nmap <S-Right> :wincmd l<CR>

"Mac copy/paste functionality
map <f5> :.w !pbcopy<CR><CR>
map <f6> :r !pbpaste<CR>


"Show hidden files at NERDTree
"Shift + i

"NERDTree reload
"r

"NERDTree menu
"m

"Multicursor (default)
"Ctrl + n
