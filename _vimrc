syntax on
colorscheme slate

set pastetoggle=<F12>
set shiftwidth=2
" tab --> space
set expandtab
set smartindent
set nu
set tabstop=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set hlsearch
set ignorecase
set smartcase
set backspace=2
set list
set listchars=tab:>-,trail:_
"highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray
set encoding=utf-8

" cursorline
set cursorline
set t_Co=256
hi cursorline term=reverse cterm=none ctermbg=black

setlocal iskeyword+=-

" good encode settings
"set termencoding=utf-8
"set encoding=japan
"set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
"set fenc=utf-8
"set enc=utf-8

nmap j gj
nmap k gk
nmap 0 g0
nmap $ g$
nmap <Esc><Esc> :nohlsearch<CR>
nmap <C-l> <C-w>w
nmap <C-p> <Plug>ToggleProject
nmap <C-n> :Unite buffer file_mru<CR>
nmap <C-m> <C-w>w
nmap <silent> eu :set fenc=utf-8<CR>
nmap <silent> ee :set fenc=euc-jp<CR>
nmap <silent> es :set fenc=cp932<CR>
nmap <silent> eru :e ++enc=utf-8 %<CR>
nmap <silent> ere :e ++enc=euc-jp %<CR>
nmap <silent> ers :e ++enc=cp932 %<CR>

" Close Project.vim when file is selected.
let g:proj_flags = "imstc"

autocmd! BufRead, BufNewFile *.inc set filetype=php
autocmd! BufRead, BufNewFile *.html set filetype=php

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Shougo/unite.vim'
Bundle 'synboo/project.vim'
filetype plugin indent on
