" highlight syntax
set t_Co=256
syntax on

set nocompatible
filetype off

" for indents
set encoding=utf-8
set number
set autoindent
set smartindent
set copyindent
set tabstop=4
set shiftwidth=4

"for search
set hlsearch
set incsearch
set ignorecase
set smartcase

set mouse=a                     " enable using the mouse if terminal emulator
set autoread                    " automatically reload files changed outside of Vim

" for history
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" for back up
set nobackup		"do not generate ~.* files
set noswapfile


" install vim-plug: https://github.com/junegunn/vim-plug


" Plugins will be downloaded under the specified directory.
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs\
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'endel/vim-github-colorscheme'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme molokayo

autocmd FileType apache setlocal commentstring=#\ %s " This is for vim-commentary, to support more file types
nmap <F8> :TagbarToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1

