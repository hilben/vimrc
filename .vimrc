set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
"
" My Bundles
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rvm'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'slim-template/vim-slim'
Plugin 'yegappan/mru'
" Shows list of methods available when pressing f8:
Plugin 'majutsushi/tagbar' 
" Turns on autocompletion:
Plugin 'Valloric/YouCompleteMe'
" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
"html javascript css
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'

call vundle#end()

filetype plugin indent on

let mapleader=","

color jellybeans

set cursorline
set modelines=0
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" 1 Tab = 2 Spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
	nmap Ä <C-W><<C-W><
	nmap Ö <C-W>><C-W>>
	nmap ö <C-W>-<C-W>-
	nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
"let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 6

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Omnicfunc
" Omnicfunc: Use ruby completion within slim files:
autocmd FileType slim setl omnifunc=rubycomplete#Complete

" Go programming
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim

" Quit with :Q
command -nargs=0 Quit :qa!

" Speed up vim?
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

" Spelling
" Turn on auto spell checker for follwoing file types: .yml
"set spelllang=en
"set spellfile=~/.vim/spell/custom.utf-8.add
":setlocal spell spelllang=en_us
"autocmd FileType yaml setlocal spell spelllang=en_us
