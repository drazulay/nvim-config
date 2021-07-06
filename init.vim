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
set runtimepath+=~/.config/nvim/var/repos/github.com/Shougo/dein.vim

" Apparently required by dein
filetype plugin indent on
syntax enable

call dein#begin("~/.config/nvim/var")
" }}}
" Load plugins -------- {{{
call dein#add("Shougo/dein.vim")
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Misc dependencies
call dein#add('nvim-lua/plenary.nvim')
call dein#add('nvim-lua/popup.nvim')

" Parser
call dein#add('nvim-treesitter/nvim-treesitter', {
		\ 'hook_post_update': ':TSUpdate'
		\ })

" LSP
call dein#add('neovim/nvim-lspconfig')
call dein#add('ray-x/lsp_signature.nvim')
call dein#add('nvim-lua/lsp-status.nvim')

" Filesystem
call dein#add('nvim-telescope/telescope.nvim')

" Completions
call dein#add('hrsh7th/vim-vsnip')
call dein#add('hrsh7th/nvim-compe')

" Theme
call dein#add('sainnhe/gruvbox-material')
call dein#add('liuchengxu/eleline.vim')
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
set shiftwidth=2
set showbreak=+++
set smartcase
set smartindent
set smarttab
set softtabstop=2
set spell
set textwidth=80
set undolevels=1000
set virtualedit=all
" }}}
" Load plugin configuration -------- {{{
source ~/.config/nvim/etc/telescope.vim
source ~/.config/nvim/etc/treesitter.vim
source ~/.config/nvim/etc/lspconfig.vim
source ~/.config/nvim/etc/lsp-status.vim
source ~/.config/nvim/etc/compe.vim
source ~/.config/nvim/etc/vsnip.vim

" Source theme last
source ~/.config/nvim/etc/theme.vim
" }}}
