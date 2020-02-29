set encoding=utf-8
set fileencodings=utf-8,euckr

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
let mapleader=","
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'octol/vim-cpp-enhanced-highlight'
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
  " Plugin 'vim-scripts/guicolorscheme.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'bling/vim-bufferline'
  " Plugin 'git://github.com/Yggdroot/indentLine.git'
  "Plugin 'git://github.com/szw/vim-g.git'
  Plugin 'git://github.com/scrooloose/nerdtree.git'
  Plugin 'git://github.com/scrooloose/syntastic.git'
  " Plugin 'git://github.com/ervandew/supertab.git'
  "Plugin 'dyng/ctrlsf.vim'
  "Plugin 'djoshea/vim-autoread'
  "Plugin 'schickling/vim-bufonly'
  "Plugin 'git://github.com/rhysd/devdocs.vim.git'
  "Plugin 'git://github.com/vimwiki/vimwiki.git'
  "Plugin 'git://github.com/tpope/vim-rails.git'
  "Plugin 'wesQ3/vim-windowswap'
  "Plugin 'w0rp/ale'
  "Plugin 'pangloss/vim-javascript'
  "Plugin 'mattn/emmet-vim'
  "Plugin 'Shougo/deoplete.nvim'
  "Plugin 'roxma/nvim-yarp'
  "Plugin 'roxma/vim-hug-neovim-rpc'
  "Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  " Plugin 'git://github.com/kana/vim-textobj-user.git'
  " Plugin 'git://github.com/kana/vim-textobj-entire.git'
  Plugin 'git://github.com/tpope/vim-commentary.git'
  "Plugin 'lyokha/vim-xkbswitch'
  "Plugin 'dracula/vim'
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

" let &t_SI = "\033]12;purple\x7"
" let &t_SR = "\033]12;red\x7"
" let &t_EI = "\033]12;blue\x7"
" let &t_ZH="\033[3m"
" let &t_ZR="\033[23m"

" set termguicolors
" set background=dark
set t_Co=256

let g:airline_theme='simple'

let g:syntastic_python_python_exec = 'python3'
set rtp+=~/.vim/bundle/YouCompleteMe

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

syntax on

" color dracula
" let g:dracula_italic = 0
let g:italic = 0
" hi Normal ctermbg=234
" hi Cursor ctermbg=200 ctermfg=8
" hi CursorLine ctermbg=204

highlight Comment cterm=italic gui=italic 
" highlight Comment cterm=italic gui=italic ctermfg=DarkBlue
" highlight LineNr term=bold ctermfg=LightYellow

" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" hi Search guibg=peru guifg=wheat
" hi Search cterm=NONE ctermfg=grey ctermbg=blue

" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0

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

set number relativenumber
set rnu

"use relative lines unless focus lost
autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

" set iskeyword-=_
set ffs=unix
set listchars=eol:¶
" set list

"`1234567890-=
"`¡™£¢∞§¶•ªº–≠
"`⁄€‹›ﬁﬂ‡°·‚—±
"
"qwertyuiop[]
"œ∑´®†\¨ˆøπ“‘
"Œ„´‰ˇÁ¨ˆØ∏”’
"
"asdfghjkl;'
"åß∂ƒ©˙∆˚¬…æ
"ÅÍÎÏ˝ÓÔÒÚÆ
"
"zxcvbnm,./
"Ω≈ç√∫˜µ≤≥÷
"¸˛Ç◊ı˜Â¯˘¿
"
"

"use eslint
nnoremap <leader>sop :source %<cr>

" yank to clipboard
" noremap <Leader>y "*y
" noremap <Leader>p "*p
" noremap <Leader>Y "+y
" noremap <Leader>P "+p
"
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <silent> <C-j> :call DelEmptyLineBelow()<CR>
noremap <silent> <C-k> :call DelEmptyLineAbove()<CR>
noremap <silent> <A-j> :call AddEmptyLineBelow()<CR>
noremap <silent> <A-k> :call AddEmptyLineAbove()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap <silent> <C-q> :q<CR>
nmap <C-L><C-L> :nohl<CR>
nmap <C-N><C-N> :set invrelativenumber<CR>
nmap <C-H><C-H> :set list!<CR>

" runing python 3 shortcut macro 
nnoremap <silent> <C-y> :w <CR> :!clear && python3 % <CR>


map <C-z> :NERDTreeToggle<CR>
map <C-o> :NERDTreeToggle<CR>
" nnoremap <C-q> :q<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GCC
" nnoremap <silent> <C-g> :w <CR> :!clear && gcc 
"             \ -I/usr/local/include % -o %<.out 
"             \ -L/usr/local/lib -lpthread -lncurses && ./%<.out <CR>

" NCURSES
" nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[33J' && gcc-9
"             \ -I/usr/local/Cellar/ncurses/6.2/include % -o %<.out 
"             \ -L/usr/local/Cellar/ncurses/6.2/lib -lncurses && ./%<.out <CR>

" GTK compile and run
" nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[3J' && gcc-9
"             \ -I/usr/local/include % -o %<.out 
"             \ -L/usr/local/lib -lpthread  `pkg-config --cflags --libs gtk+-2.0` && ./%<.out <CR>


" SDL compile and run
nnoremap <silent> <C-g> :w <CR> :!clear && printf '\e[33]' && gcc-9 %
            \ -I/usr/local/include 
            \ -L/usr/local/Cellar/sdl2/2.0.10/lib -lsdl2 
            \ -L/usr/local/Cellar/sdl2_image/2.0.5/lib -lsdl2_image
            \  -o %<.out && ./%<.out <CR>

            " \ `pkg-config --cflags --libs ' 


" OpenGL compile and run
" nnoremap <silent> <C-p> :w <CR> :!clear && printf '\e[3]' && gcc -lstdc++ 
"             \ -I/usr/local/include % -o %<.out -L/usr/local/Cellar/glfw/3.3/lib 
"             \ -lglfw -lglew  -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo && ./%<.out <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GPP, C++
nnoremap <silent> <C-p> :w <CR> :!clear && printf '\e[33]' && g++-9
            \ -I/usr/local/include % -o %<.out 
            \ -L/usr/local/lib && ./%<.out <CR>

" OpenGL compile and run
" nnoremap <silent> <C-p> :w <CR> :!clear && printf '\e[3]' && gcc -lstdc++ 
"             \ -I/usr/local/include % -o %<.out -L/usr/local/Cellar/glfw/3.3/lib 
"             \ -lglfw -lglew  -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo && ./%<.out <CR>


" SFML compile and run
" nnoremap <silent> <C-p> :w <CR> :!clear && g++ 
"              \ -I/usr/local/include % -o %<.out 
"              \ -L/usr/loca/lib -lsfml-system -lsfml-window -lsfml-graphics && ./%<.out <CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
