set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-ruby/vim-ruby'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-commentary'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'fatih/vim-go'

call vundle#end()

set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set clipboard=unnamed
set number
set ruler
set laststatus=2
syntax on
filetype on
filetype indent on
filetype plugin on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Color scheme
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" nerd tree
" autocmd vimenter * NERDTree
" autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
map <C-r> :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>

" tag bar
nmap <C-t> :TagbarToggle<CR>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" autocomplete
" this defaults to <C-x><C-o>
autocmd FileType ruby compiler ruby

" make mouse work. Helpful for changing partition sized
set mouse=a
set ttymouse=xterm2

" Arrows in airline :o
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" copy paste
vmap <C-x> :!pbcopy<CR>
vmap <C-C> :w !pbcopy<CR><CR>

" bye bye ESC
inoremap jj <ESC>
