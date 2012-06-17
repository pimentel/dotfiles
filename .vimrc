" Pathogen allows you to install things in ~/.vim/bundle/plugin_name.
" Anything in those directories will be automatically added to the runtime
" path.
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

call pathogen#infect()     
" call pathogen#helptags()

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
" colorscheme kellys
" colorscheme lettuce 
" colorscheme inkpot
" colorscheme sift
" colorscheme elise
" colorscheme jellybeans
colorscheme sonofobsidian
syntax enable

" set background=light
set background=dark

set guioptions-=T   " remove toolbar

" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif

" colorscheme solarized

let g:solarized_contrast = 'high'
let g:solarized_menu = 0
let g:solarized_termtrans = 1
let g:solarized_hitrail = 1
let g:solarized_termcolors=256

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

" Configuration for vim-r-plugin"
" let vimrplugin_applescript=0
" let vimrplugin_screenplugin=0
" let vimrplugin_conqueplugin=1

" let vimrplugin_tmux=0
" let vimrplugin_screenplugin=1
" let vimrplugin_vimpager = "no"

" Conque Term"
let g:ConqueTerm_TERM = 'xterm'

" Use w!! to write file with root permissions
cmap w!! %!sudo tee > /dev/null %

" Easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Status line
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Show the status line all of the time
set laststatus=2

" Set FufFile and FufBuffer to work similar to Emacs
nnoremap <Leader>xf :FufFile<return>
nnoremap <Leader>xb :FufBuffer<return>

" set iskeyword+=.

" set iskeyword+=.
" autocmd FileType R setlocal iskeyword+=.

" LaTeX box stuff
autocmd Filetype tex imap <buffer> [[ 		\begin{
autocmd Filetype tex imap <buffer> ]]		<Plug>LatexCloseCurEnv
autocmd Filetype tex nmap <buffer> <F5>		<Plug>LatexChangeEnv
autocmd Filetype tex vmap <buffer> <F7>		<Plug>LatexWrapSelection
autocmd Filetype tex vmap <buffer> <S-F7>		<Plug>LatexEnvWrapSelection
autocmd Filetype tex imap <buffer> (( 		\eqref{

" Reformat the entire paragraph
noremap Q gqip

" Make hjkl act like you would expect on wrapped lines
noremap j gj
noremap k gk
