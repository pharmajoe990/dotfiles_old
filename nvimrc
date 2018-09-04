" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wincent/command-t'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ngmy/vim-rubocop'
Plug 'chriskempson/base16-vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
call plug#end()							" Initialize plugin system

" Formatting
set shiftwidth=2
"set tabstop=1 

" Misc config
set relativenumber
set encoding=utf-8
filetype plugin on

" Colors/themes
let base16colorspace=256  					" Access colors present in 256 colorspace
syntax enable
set background=dark

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" **** KEY REMAPPINGS ****
" inoremap jj <esc>
map <C-n> :NERDTreeToggle<CR>
let mapleader="\<space>"

" Plugin configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16'
let g:CommandTWildIgnore='*/node_modules'			" Command-T Ignore from search
let g:GitGutterEnable = 1					" Enable GitGutter

