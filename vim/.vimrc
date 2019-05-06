set nocompatible
set visualbell t_vb=
set noswapfile
set backspace=indent,eol,start

filetype plugin indent on
syntax on
syntax enable

set showcmd

hi Normal ctermbg=None
hi VertSplit cterm=None
hi NonText ctermfg=8
set fillchars=vert:\│

set scrolloff=3

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set autoindent

set wrap linebreak nolist

map <s-Space> <localleader>
map <Space> <leader>

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

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Vimtex options
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'jobs',
            \ 'background' : 1,
            \ 'build_dir' : 'latex.out',
            \ 'callback' : 0,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=0',
            \   '-interaction=nonstop',
            \ ]
            \}
let g:vimtex_log_ignore = ['Zathura is not linked to libsynctex\!']

let g:tex_flavor = 'latex'

au FileType snippets setlocal noexpandtab nosmarttab

