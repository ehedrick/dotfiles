set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'derekwyatt/vim-scala'
Plugin 'easymotion/vim-easymotion'
Plugin 'elixir-lang/vim-elixir'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'shougo/neocomplete'
Plugin 'skalnik/vim-vroom'
Plugin 'szw/vim-tags'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
" Bundle 'wellle/tmux-complete.vim'

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
set number
set relativenumber
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

" folding
set foldenable
set foldmethod=indent
set foldlevel=10

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

" even more autocomplete!
let g:neocomplete#enable_at_startup = 1

" ctags
set exrc
set secure
let g:vim_tags_auto_generate = 1

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

" silver surfer is faster than ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" distraction free mode
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
