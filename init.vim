" Author:      Daniel Azulay
" Repository:  https://github.com/drazulay/nvim-config
" Description: Neovim configuration repository	

" Vimscript settings -------- {{{
if &compatible
  set nocompatible " Be iMproved
endif

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Initialize plugin loader -------- {{{
set runtimepath+=~/.config/nvim/var/dein/repos/github.com/Shougo/dein.vim

" Apparently required by dein
filetype plugin indent on
syntax enable

call dein#begin("~/config/nvim/")
" }}}

" Load plugins -------- {{{
call dein#add("Shougo/dein.vim")
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#add('sainnhe/sonokai')
call dein#add('nvim-lua/popup.nvim')
call dein#add('nvim-lua/plenary.nvim')
call dein#add("nvim-telescope/telescope.nvim")
call dein#add("neovim/nvim-lspconfig")
call dein#add("nvim-lua/completion-nvim")
call dein#add("norcalli/snippets.nvim")
" }}}

" Finalize plugin loader -------- {{{
call dein#end()

if dein#check_install()
 call dein#install()
endif
" }}}

" Load general configuration -------- {{{
let mapleader = "`"

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set autochdir
set autoindent
set autowriteall
set backspace=indent,eol,start
set backupdir=~/.config/nvim/var/backups
set cindent
set colorcolumn=80
set directory=~/.config/nvim/var/swap
set expandtab
set gdefault
set hlsearch
set ignorecase
set incsearch
set linebreak
set number
set ruler
set shiftwidth=2
set showbreak=+++
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set spell
set textwidth=80
set undolevels=1000
set virtualedit=all
set visualbell

" In case modules have messed this up
filetype plugin indent on
syntax enable
" }}}

" Load plugin configuration -------- {{{
source etc/sonokai.vim
source etc/telescope.vim
source etc/lspconfig.vim
source etc/completion.vim
" }}}
