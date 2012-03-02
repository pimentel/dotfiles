" Pathogen allows you to install things in ~/.vim/bundle/plugin_name.
" Anything in those directories will be automatically added to the runtime
" path.
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

call pathogen#infect()     
call pathogen#helptags()

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

set wrap
set textwidth=79
set formatoptions=qrn1
" show cursor position at all the time
set ruler

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Turn on omnicomplete in all modes
set ofu=syntaxcomplete#Complete

" command line completion
set wildmenu
" set wildmode=longest:full,full
set wildmode=list:longest,full
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o

" supposedly useful for vim-fuzzee
set switchbuf=usetab

" add a '$' to the end of a change motion 
set cpoptions+=$

" " edit invalid areas of the file 
" set virtualedit=all

set term=ansi

set autoindent
set copyindent " copy the previous line's indentation
set smartindent

" Disable automatic folding
set nofoldenable 

" set tabsize to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
                  
" turn on highlighting during search 
set hlsearch
set incsearch ignorecase smartcase

" Color scheme
" colorscheme slate
" colorscheme torte
colorscheme kellys

" Keybindings
" Remap omnicomplete 
" imap ii <Esc>
inoremap <C-space> <C-x><C-o>
nnoremap ; :

" After a search, press ESC to clear the highlight
nnoremap <esc> :noh<return>

" Easy window navigation
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" Wean off of using arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Default leader is '\'
let mapleader=','
let maplocalleader=','

" ============================================================================
" File specific settings
autocmd Filetype tex setl sw=2 sts=2

" On Mac this is 'open' TODO: need to find analogous on Linux
let g:LatexBox_viewer = 'open'

" " Save on losing focus
" au FocusLost * :wa

" Configuration for vim-r-plugin"
let vimrplugin_applescript=0
let vimrplugin_screenplugin=0
let vimrplugin_conqueplugin=1
" let vimrplugin_tmux=0
" let vimrplugin_screenplugin=1
" let vimrplugin_term_cmd="Terminal.app"
" let vimrplugin_vimpager = "no"

" Conque Term"
let g:ConqueTerm_TERM = 'xterm'
