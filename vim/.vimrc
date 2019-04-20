set nocompatible
set visualbell t_vb=
set noswapfile
set backspace=indent,eol,start

filetype plugin indent on
syntax on
syntax enable

hi Normal ctermbg=None
hi VertSplit ctermfg=None ctermbg=None
hi NonText ctermfg=8
set fillchars=vert:\ ,fold:-

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoindent

set wrap linebreak nolist

let maplocalleader = " "

noremap j gj
noremap k gk
noremap $ g$
noremap ^ g^

" Plugin Management
call plug#begin('~/.vim/plug')

Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'

call plug#end()

" Include script files in the path
let $PATH .= ':' . $HOME . '/.vim/scripts'

" Vimtex options
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'mupdf'

" au BufWritePost *tex VimtexCompile
let g:tex_flavor = 'latex'

" au BufNewFile *tex silent !texbot -n -o %
" au BufReadPre *tex silent !texbot -o %
" au BufWritePost *tex silent !texbot -w %

au FileType *tex setlocal shiftwidth=2
au FileType sh setlocal shiftwidth=2
au FileType c,cpp setlocal shiftwidth=2

