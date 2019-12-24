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
  " Plugin 'git://github.com/kana/vim-textobj-user.git'
  " Plugin 'git://github.com/kana/vim-textobj-entire.git'
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

set history=1000
set undolevels=1000
set hidden
set nowrap
"set ignorecase
set showmatch
set showcmd
set showmode
set hlsearch
set incsearch

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10


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

let &t_ZH="\033[3m"
let &t_ZR="\033[23m"

" hi Cursor ctermbg=200 ctermfg=8
" hi CursorLine ctermbg=204

" let &t_SI = "\033]12;purple\x7"
" let &t_SR = "\033]12;red\x7"
" let &t_EI = "\033]12;blue\x7"

" if &term =~ "xterm\\|rxvt"
"   " use an orange cursor in insert mode
"   let &t_SI = "\<Esc>]12;orange\x7"
"   " use a red cursor otherwise
"   let &t_EI = "\<Esc>]12;red\x7"
"   silent !echo -ne "\033]12;red\007"
"   " reset cursor when vim exits
"   autocmd VimLeave * silent !echo -ne "\033]112\007"
"   " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
" endif

let g:dracula_italic = 0
set t_Co=256
syntax on
color dracula
hi Normal ctermbg=234

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

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

nnoremap <silent> <C-z> <C-x>
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-y> :w <CR> :!clear && python % <CR>

 " GTK compile and run
nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[3J' && gcc -I/usr/local/include % -o %<.out  -L/usr/local/lib -lpthread  `pkg-config --cflags --libs gtk+-2.0` && ./%<.out <CR>
" SDL compile and run
" nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[3J' && gcc -I/usr/local/include % -o %<.out -L/usr/local/lib -lpthread -lSDL2 -lSDL2_image -lgtk+-2 && ./%<.out <CR>
" nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[3J' && gcc -I/usr/local/include % -o %<.out -L/usr/local/lib && -lpthread -lcurses ./%<.out <CR>

" OpenGL compile and run
" nnoremap <silent> <C-p> :w <CR> :!clear && printf '\e[3]' && g++ -I/usr/local/include % -o %<.out -L/usr/local/Cellar/glfw/3.3/lib -lglfw -lglew  -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo && ./%<.out <CR>
nnoremap <silent> <C-p> :w <CR> :!clear && printf '\e[3]' && gcc -lstdc++ -I/usr/local/include % -o %<.out -L/usr/local/Cellar/glfw/3.3/lib -lglfw -lglew  -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo && ./%<.out <CR>
" SFML compile and run
" nnoremap <silent> <C-p> :w <CR> :!clear && g++ % -o %<.out -lsfml-system -lsfml-window -lsfml-graphics && ./%<.out <CR>

map <C-o> :NERDTreeToggle<CR>

" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p
