" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'mileszs/ack.vim'
"Plugin 'exvim/ex-matchit'
"Plugin 'kien/ctrlp.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'bling/vim-airline'
"Plugin 'tpope/vim-fugitive'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'pangloss/vim-javascript'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'derekwyatt/vim-scala'
"Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on
filetype plugin on

" Global settings
"set bg=dark
filetype off
syntax on
set ai
set nu
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256
set laststatus=2
set noshowmode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,chinese
set list listchars=tab:→\ ,trail:·
set autoread
set shortmess=at
set timeout timeoutlen=1000 ttimeoutlen=50
set hlsearch incsearch smartcase ignorecase
set completeopt=longest,menuone
set cot=menu
set wildignore+=*.o,*.log,*.obj,.git,*.jpg,*.png,*.gif,*/vendor/bundle,*/vendor/cache
cmap w!! w !sudo tee % > /dev/null
set notitle
set t_ts=k
set t_fs=\
set titlestring=vim-%{split(getcwd(),'\/')[-1]}

" Preferences
" Tree
let mapleader=";"
nmap <silent> <leader>ne :NERDTree<CR>
nmap <silent> <leader>nc :NERDTreeClose<CR>
map <silent> <F1> :NERDTreeToggle<CR>
let NERDTreeWinPos="right"

" Tags & Search
map <silent> <F2> : !ctags -R --exclude=public --exclude=vendor .<CR>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  'vendor/bundle/*\|vendor/cache/*\|spec',
  \ 'file': '\v\.(exe|so|dll|swp|log|jpg|png|json)$',
  \ }
if executable("ack")
    nnoremap <leader>a :Ack 
    let g:ackprg="ack -H --smart-case --nocolor --nogroup --column
          \ --nocss --ignore-dir=vendor --ignore-dir=log --ignore-dir=tmp
          \ --ignore-file=is:Session.vim --ignore-file=is:tags"
    let g:ackhighlight=1
endif

" StatusLine
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.space = ' '
let g:airline_symbols.branch = '⎇'

" File types
autocmd BufNewFile,BufRead Thorfile set filetype=ruby
autocmd BufNewFile,BufRead *.thor set filetype=ruby
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Capfile set filetype=ruby
autocmd BufNewFile,BufRead pryrc set filetype=ruby
autocmd BufNewFile,BufRead *.less set filetype=css
autocmd BufNewFile,BufRead *.god set filetype=ruby
autocmd BufNewFile,BufRead *.json set filetype=javascript
autocmd BufNewFile,BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:>
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType c,java,sh,javascript set ts=4 sw=4 sts=4 et
autocmd FileType go set ts=8 sw=8 sts=8


set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
let g:molokai_original = 1
let g:rehash256 = 1
