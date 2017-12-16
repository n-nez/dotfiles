" appearance defaults
syntax on
set number
set showcmd
set nohlsearch
set background=dark

" indentation defaults
set autoindent 
set expandtab 
set softtabstop=4
set tabstop=4
set shiftwidth=4

autocmd BufNewFile,BufRead *.yaml,*.ylm set softtabstop=2

" BEGIN Vundle
" make vundle work properly
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'NLKNguyen/papercolor-theme'
call vundle#end()

filetype plugin indent on
" END Vundle

" BEGIN lightline
" make lightline visible
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }
" END lightline

silent! colorscheme PaperColor
