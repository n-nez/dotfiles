" appearance defaults
syntax on
set number
set showcmd
set nohlsearch
set background=dark

" indentation defaults
set backspace=indent,eol,start
set smartindent
set expandtab 
set softtabstop=4
set tabstop=4
set shiftwidth=4

au FileType c,cpp set noexpandtab
au FileType cmake set noexpandtab
au FileType stp set sw=2 softtabstop=2
au FileType yaml,yml set sw=2 softtabstop=2
au FileType xml set sw=2 softtabstop=2
au BufRead,BufNewFile *.gsl  setfiletype gsl
au FileType gsl set sw=2 softtabstop=2

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
