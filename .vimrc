" Pathogen allows you to install things in ~/.vim/bundle/plugin_name.
" Anything in those directories will be automatically added to the runtime
" path.
filetype off
let g:pathogen_disabled = []
filetype plugin indent on

call pathogen#infect('bundle/{}')
Helptags

" call pathogen#helptags()

" view debug messages
" set debug=msg

syntax on

set nobackup
set noswapfile

" Hide buffers instead of closing them
set hidden

set nocompatible

" turn on line numbers
set number

" font
set gfn=Menlo:h13.5

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
" map <A-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
" TODO: Make this the mappings only on Mac
nmap <silent> ˚ :wincmd k<CR>
nmap <silent> ∆ :wincmd j<CR>
nmap <silent> ˙ :wincmd h<CR>
nmap <silent> ¬ :wincmd l<CR>

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
let g:LatexBox_show_warnings = 0

" Configuration for vim-r-plugin"
" let vimrplugin_applescript=0
" let vimrplugin_screenplugin=0
" let vimrplugin_conqueplugin=1

let vimrplugin_assign = 2

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
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [%p%%]\ [LEN=%L]\ [POS=%04l,%04v]

" Show the status line all of the time
set laststatus=2

" Set FufFile and FufBuffer to work similar to Emacs
nnoremap <Leader>xf :FufFile<return>
nnoremap <Leader>xb :FufBuffer<return>

" kill a buffer without closing the split
nnoremap <Leader>xk :bp\|bd #<return>

" set iskeyword+=.

" set iskeyword+=.
" autocmd FileType R setlocal iskeyword+=.

" LaTeX box stuff
" let g:LatexBox_viewer
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


" if has("gui_running"):
"     call add(g:pathogen_disabled, 'YouCompleteMe')
" endif

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" YouCompleteMe configuration
let g:ycm_use_ultisnips_completer = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

let g:pymode = 1
let g:pymode_options = 0
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $HOME.'/.virtualenvs/gpy'

let g:pymode_lint = 0
let g:pymode_lint_write = 0
let g:pymode_rope = 0

" Less annoying R indentation
let r_indent_align_args = 0

" Rainbow parens always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Enable Markdown support
au BufNewFile,BufRead *.md set filetype=markdown

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Show trailing whitespace
let g:airline#extensions#whitespace#enabled = 0

" airline
"let g:airline_theme='luna'
let g:airline_theme='raven'
" let g:airline_theme='tomorrow'

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Nov-01 13:56):

" Force Vim to use 256 colors if running in a capable terminal emulator:
if &term =~ "xterm" || &term =~ "256" || $DISPLAY != "" || $HAS_256_COLORS == "yes"
    set t_Co=256
endif

" Vim-R-Plugin
"    ROpenPDF
" nmap ROpenPDF

autocmd Filetype rmd nmap <LocalLeader>zp <Plug>ROpenPDF

" highlight ErrorMsg ctermfg=White guifg=White
highlight ErrorMsg term=standout ctermfg=15 ctermbg=1 guifg=#FFFFFF guibg=Red
