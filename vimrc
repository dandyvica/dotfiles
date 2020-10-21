" A.Viguier 26FEB2020 Added plugin manager for vim < v8.0

"-----------------------------------------------------------------
" plugins managed by vim-plug (https://github.com/junegunn/vim-plug/wiki/tutorial)
"-----------------------------------------------------------------
" Plugins will be downloaded under the specified directory.
"call plug#begin('~/.vim/plugged')

" Declare the list of plugins

" nerd-tree is for having a list of files/directories beside the editor
"Plug 'preservim/nerdtree'

" change surroundings: "Hello" to 'Hello' using : cs"'
"Plug 'tpope/vim-surround'

" nicer command line
"Plug 'itchyny/lightline.vim'

" for Sublime-like multiple cursors
"Plug 'terryma/vim-multiple-cursors'

" List ends here. Plugins become visible to Vim after this call.
"call plug#end()



"-----------------------------------------------------------------
" general stuff
"-----------------------------------------------------------------
" makes options not compatible with legacy vi
set nocompatible

" history size
set history=1000

"-----------------------------------------------------------------
" search options
"-----------------------------------------------------------------
" enable search highlighing
set hlsearch

" ignore case when searching
set ignorecase

" recursive file search on commands involving files
set path+=**

"-----------------------------------------------------------------
" color theme and syntax coloring
"-----------------------------------------------------------------
colorscheme murphy
syntax on

" explicitly tell Vim that the terminal supports 256 colors
set t_co=256

"-----------------------------------------------------------------
" interface options
"-----------------------------------------------------------------
" always show cursor position
set ruler

" show a visual line under cursor's current line
 set cursorline

" highlight current line
hi CursorLine cterm=bold ctermbg=red ctermfg=white guibg=red guifg=white

" highlight column
set cursorcolumn

" don't wrap long lines
set nowrap

" show line numbers
set number

" show matching part of [] {} () pairs
set showmatch

" display status bar
set laststatus=2

" utf8 encoding
set encoding=utf-8

" set carousel for options
set wildmenu

"-----------------------------------------------------------------
" indentation options
"-----------------------------------------------------------------
" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" set tabs to have 4 spaces
set ts=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" try to indent as much as possible for (mostly) code
set smartindent

"-----------------------------------------------------------------
" my shortcuts
"-----------------------------------------------------------------
" copy line below as Sublime Text
:nmap <C-d> yyp

" useful for tab windows
:nmap <C-Right> gt
:nmap <C-Left> gT

" for splitting windows
:nmap <C-Up> <C-W>Up

" remap backspace as normal backspace
:nmap <BS> X

" remap undo & redo to regular Ctrl-Z/Ctrl-Y
:nmap <C-z> u
:nmap <C-y> <C-R>

"-----------------------------------------------------------------
" plugins specific commands
"-----------------------------------------------------------------
" open NERDtree
map <C-e> :NERDTreeToggle<CR>

