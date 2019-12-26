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
au BufRead,BufNewFile *.sbt setfiletype scala

autocmd FileType json syntax match Comment +\/\/.\+$+

" BEGIN Vundle
" make vundle work properly
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'neoclide/coc.nvim', {'rev': 'release'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'cespare/vim-toml'
Plugin 'tpope/vim-speeddating'
Plugin 'jceb/vim-orgmode'
call vundle#end()

filetype plugin indent on
" END Vundle

" BEGIN YouCompleteMe
let g:ycm_auto_trigger=0
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
" END YouCompleteMe

" BEGIN CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " MacOSX/Linux

let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore={
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
" END CtrlP

" BEGIN lightline
" make lightline visible
set laststatus=2
set noshowmode " do not show mode in native statusbar
let g:lightline={
  \ 'colorscheme': 'wombat',
  \ }
" END lightline

" BEGIN coc.vim
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Remap for do action format
nnoremap <silent> F :call CocAction('format')<CR>

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" END coc.vim

silent! colorscheme monokai_cxx
