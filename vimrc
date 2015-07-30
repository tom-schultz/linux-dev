set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/vim-scripts/IndexedSearch.git'
Plugin 'https://github.com/sjl/gundo.vim.git'
Plugin 'https://github.com/vim-scripts/delimitMate.vim.git'
Plugin 'https://github.com/gregsexton/MatchTag.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin on

set number
set ruler
match ColorColumn '\%>80v.\+'
syntax on
set showmode
set hidden
set scrolloff=4

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set backspace=indent,eol,start
map j gj
map k gk
nnoremap <F5> :GundoToggle<CR>
inoremap jj <ESC>
cnoremap jj <c-c>

set foldmethod=syntax
set foldnestmax=20
set foldminlines=5

set background=dark
colorscheme solarized

filetype on
" Associate Arduino ino with c++
au BufRead,BufNewFile *.ino set filetype=cpp

autocmd Filetype html set foldmethod=indent | set foldcolumn=4 | set foldnestmax=20

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_autoclose_preview_window_after_completion = 1
" Put something like this in the .localvimrc file
"let g:ycm_extra_conf_globlist = ['~/folder/repo/*',
                                "\'~/folder/repo/build/debug/*']

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

source ~/.localvimrc
