"Basic Settings
:set number
:set list
:syntax on   
:set cursorline
:set cursorcolumn
:set hlsearch
:set showcmd 
:set showmatch
:set wildmenu
:set autoindent
:set smartindent
:set tabstop=2
:set expandtab
:set shiftwidth=2
:set complete+=kspell
:set completeopt=menuone,longest
" PlugINs using vim-plug as PlugIN manager
" url: https://github.com/junegunn/vim-plug
call plug#begin('~/local/share/vim/plugged')

Plug 'vim-scripts/AutoComplPop'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'

call plug#end()
"PlugIN 'vim-airline/vim-airline-themes' Settings
let g:airline_themes = 'base16'
"PlugIN 'vim-airline/vim-airlines' Settings
let g:airline#extensions#tabline#enabled = 1