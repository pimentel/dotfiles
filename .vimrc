" Pathogen allows you to install things in ~/.vim/bundle/plugin_name.
" Anything in those directories will be automatically added to the runtime
" path.
call pathogen#infect()     

syntax on

set nobackup
set noswapfile

" Hide buffers instead of closing them
set hidden

set nocompatible

" turn on line numbers
set number

" font
set gfn=Menlo:h12

set textwidth=79
" show cursor position at all the time
set ruler

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" command line completion
set wildmenu
set wildmode=longest:full,full
set wildignore=*.swp,*.bak,*.pyc,*.class

set term=ansi

set autoindent
set copyindent " copy the previous line's indentation
set smartindent

" Disable automatic folding
set nofoldenable 

" set tabsize to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
                  
" turn on highlighting during search 
set hlsearch
set incsearch ignorecase 


" Color scheme
" colorscheme slate
" colorscheme torte
colorscheme kellys

" Keybindings
" Remap omnicomplete 
inoremap <C-space> <C-x><C-o>
nnoremap ; :

" After a search, press ESC to clear the highlight
nnoremap <esc> :noh<return>

" Easy window navigation
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" Default leader is '\'
let mapleader=','
let maplocalleader=','

" ============================================================================
" File specific settings
autocmd Filetype tex setl sw=2 sts=2

" On Mac this is 'open' TODO: need to find analogous on Linux
let g:LatexBox_viewer = 'open'
