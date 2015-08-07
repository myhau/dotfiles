set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround' 
Plugin 'Raimondi/delimitMate'
Plugin 'oblitum/rainbow'
Plugin 'tpope/vim-fireplace' " clojure repl
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'thinca/vim-quickrun'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-abolish'
Plugin 'guns/vim-clojure-static'
Plugin 'mxw/vim-jsx'
Plugin 'chase/vim-ansible-yaml'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'marijnh/tern_for_vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'ervandew/eclim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'chriskempson/base16-vim'
Plugin 'terryma/vim-expand-region'
Plugin 'godlygeek/tabular'
" Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'kshenoy/vim-signature'
Plugin 'michaeljsmith/vim-indent-object'


" the following are examples of different formats supported.
" keep plugin commands between vundle#begin/end.
" plugin on github repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'l9'
" git plugin not hosted on github
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" all of your plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
filetype indent off
" to ignore plugin indent changes, instead use:
"filetype plugin on
"
" brief help
" :pluginlist       - lists configured plugins
" :plugininstall    - installs plugins; append `!` to update or just :pluginupdate
" :pluginsearch foo - searches for foo; append `!` to refresh local cache
" :pluginclean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for faq
" put your non-plugin stuff after this line

" written by myhau


" rainbow for some filetypes


" set leader
let mapleader = ' '

" keybindings

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>o :o

vmap <Leader>r <Plug>(expand_region_expand)
vmap <Leader>R <Plug>(expand_region_shrink)

nnoremap <CR> G
nnoremap <BS> gg

" indent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" syntax highlight
syntax on

" search
" set incsearch
" set hlsearch


" line numbers
set number


" tilde (case change) behaves like, an operator
set tildeop


set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo


" disable hjkl and esc to learn
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" fix ctrl arrows for screen based terminals 
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

set shell=/bin/zsh

" search settings
" case insensitive by def
set ignorecase
set smartcase


" keys


map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

set pastetoggle=<F5> 

" plugins settings


" base16

set t_Co=256
set background=dark
let g:base16colorspace = 256
colorscheme Tomorrow-Night
let g:airline_theme='tomorrow'


" ctrlp faster
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ycm
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_min_num_of_chars_for_completion = 1

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " enable tabline

" syntastic
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++14'

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1


" au FileType clojure,lisp,racket call rainbow#load()
