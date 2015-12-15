set nocompatible              " be iMproved, required
filetype off                  " required

:imap jj <Esc>

let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '\.ropeproject', '\.o', '\.bzr', '\.ipynb_checkpoints$',
      \ '__pycache__',
      \ '\.egg$', '\.egg-info$', '\.tox$', '\.idea$', '\.sass-cache',
      \ '\.env$', '\.env[0-9]$', '\.coverage$', '\.tmp$', '\.gitkeep$',
      \ '\.coverage$', '\.webassets-cache$', '\.vagrant$', '\.DS_Store',
      \ '\.env-pypy$']

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
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
" Plugin 'vim-scripts/AutoClose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shutnik/jshint2.vim'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
let g:airline_powerline_fonts = 1

let g:syntastic_loc_list_height = 5

colorscheme badwolf

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

set noswapfile
set backup
set backupdir=~/.vim_backup//

set fileformats=unix,dos,mac
set nolist
set expandtab
set softtabstop=4 tabstop=4 shiftwidth=4
set ruler
set wildignore=*.swp,*.bak,js_cache*,css_cache*,*.tpl.php,data_cache*,CodeCoverage,*.pyc
set wildmode=longest,list
set clipboard=unnamedplus,unnamed,autoselect,exclude:cons\|linux
set relativenumber
set colorcolumn=80
set cursorline
set showmatch

" NERDTree settings
" Open NERDTree automatically if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" CTRL+n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


let g:syntastic_mode_map = { 'mode': 'active',
                          \ 'active_filetypes': [],
                          \ 'passive_filetypes': [] }
let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_validator_exec= ['tidy']
nnoremap <silent> <F5> :SyntasticCheck<CR>

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+$/

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " (must install the_silver_searcher)
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
