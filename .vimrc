set encoding=utf-8
set fileencodings=utf-8,euckr
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
let mapleader=","
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  "Plugin 'git://github.com/mxw/vim-jsx.git'
  "Plugin 'git://github.com/tyrannicaltoucan/vim-deep-space.git'
  "Plugin 'git://github.com/Lokaltog/vim-distinguished.git'
  "Plugin 'git://github.com/ternjs/tern_for_vim.git'
  "Plugin 'jelera/vim-javascript-syntax'
  "Plugin 'nathanaelkane/vim-indent-guides'
  "Plugin 'Raimondi/delimitMate'
  "Plugin 'https://github.com/kien/ctrlp.vim.git'
  "Plugin 'rizzatti/dash.vim'
  "Plugin 'git://github.com/jeetsukumaran/vim-buffergator.git'
  "Plugin 'airblade/vim-gitgutter'
  Plugin 'bling/vim-airline'
  Plugin 'bling/vim-bufferline'
  "Plugin 'git://github.com/Yggdroot/indentLine.git'
  "Plugin 'git://github.com/szw/vim-g.git'
  Plugin 'git://github.com/scrooloose/nerdtree.git'
  Plugin 'git://github.com/ervandew/supertab.git'
  "Plugin 'dyng/ctrlsf.vim'
  "Plugin 'djoshea/vim-autoread'
  "Plugin 'schickling/vim-bufonly'
  "Plugin 'git://github.com/rhysd/devdocs.vim.git'
  "Plugin 'git://github.com/vimwiki/vimwiki.git'
  "Plugin 'git://github.com/tpope/vim-rails.git'
  "Plugin 'wesQ3/vim-windowswap'
  "Plugin 'w0rp/ale'
  Plugin 'dracula/vim'
  "Plugin 'pangloss/vim-javascript'
  "Plugin 'mattn/emmet-vim'
  "Plugin 'Shougo/deoplete.nvim'
  "Plugin 'roxma/nvim-yarp'
  "Plugin 'roxma/vim-hug-neovim-rpc'
  "Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plugin 'git://github.com/tpope/vim-commentary.git'
  Plugin 'git://github.com/kana/vim-textobj-user.git'
  Plugin 'git://github.com/kana/vim-textobj-entire.git'
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

set history=1000
set undolevels=1000
set hidden
set nowrap
"set ignorecase
set showmatch
set hlsearch
set incsearch
" set visualbell
set t_vb=
set noerrorbells
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set nobackup
set noswapfile
set mouse=a
set laststatus=2

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
"let g:dracula_italic = 0
set t_Co=256
syntax on
" color dracula
"set termguicolors
"
set number
"use relative lines unless focus lost
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

"use eslint
nnoremap <leader>sop :source %<cr>

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-y> :w <CR> :!clear && python3 % <CR>
nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[3J' &&gcc % -o %< -lncurses && ./%< <CR>
nnoremap <silent> <C-p> :w <CR> :!clear && g++ % -o %< && ./%< <CR>

map <C-o> :NERDTreeToggle<CR>

