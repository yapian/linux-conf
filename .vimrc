call pathogen#infect()

set tabstop=4
set shiftwidth=4
"set expandtab
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set termencoding=uft-8,
set term=linux

let &termencoding=&encoding
set fileencodings=utf-8,gb18030,gbk,gb2312,ucs-bom,cp936
set ai "Auto indent
set si "Smart indent
set noai
set nobackup

set autoindent
set smartindent
set showmatch
set ruler

"Configure for go
filetype plugin indent on
highlight Comment ctermfg=green guifg=green

syntax enable
syntax on
set t_Co=256

filetype plugin on
set number
let g:go_disable_autoinstall=0
