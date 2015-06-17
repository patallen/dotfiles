set nocompatible              " be iMproved, required
filetype off                  " required

:imap jj <Esc>

set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'L9'
Plugin 'nvie/vim-flake8'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
let g:airline_powerline_fonts = 1

colorscheme sorcerer 

syntax on
filetype plugin indent on
set encoding=utf-8
set hidden
set t_vb=
set showcmd
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set novisualbell
set noerrorbells
set ttyfast
set mouse=
set nocompatible
set backup
set backupdir=~/.vim_backup
set noswapfile
set fileformats=unix,dos,mac
set laststatus=2
set nolist
set noexpandtab
set softtabstop=4 tabstop=4 shiftwidth=4
set ruler
set wildignore=*.swp,*.bak,js_cache*,css_cache*,*.tpl.php,data_cache*,CodeCoverage,*.pyc
set wildmode=longest,list
set clipboard=unnamedplus,unnamed,autoselect,exclude:cons\|linux
set relativenumber

" NERDTree settings
" Open NERDTree automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" CTRL+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"hi Directory ctermfg=0 ctermbg=none

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:syntastic_mode_map = { 'mode': 'passive',     
                          \ 'active_filetypes': [],     
                          \ 'passive_filetypes': [] } 
let g:syntastic_auto_loc_list=1     
nnoremap <silent> <F5> :SyntasticCheck<CR>

