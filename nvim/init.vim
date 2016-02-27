
" Vim Stuff
set nocompatible
syntax on

" Enable filetype plugins
filetype plugin on
filetype indent on

" Vim Gui
set guioptions-=r       " Remove right-hand scroll bar
set guioptions-=L       " Remove left-hand scroll bar
set number              " Show the line number
set showmatch           " Show matching brackets.
set autochdir           " automatically change window's cwd to file's dir
set confirm             " get a dialog when :q, :w, or :wq fails
set autoread            " Actualiza cambios realizados fuera de vim.
set clipboard=unnamed

" List completions
set wildmenu
set wildmode=full
set wildignore=*.o,*~,*.pyc

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set shiftround
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disbale backups
set nobackup
set noswapfile
set nowritebackup

"" Fix backspace indent
set backspace=indent,eol,start

"" Encoding
set bomb
set binary

" Left goes back to the en-prev line
set whichwrap+=<,>,h,l,[,]

" Disable Scratch-Preview Documentation
set completeopt-=preview


"
" Key custom Configuration 
"

" Leader Mapping
let mapleader=' '


"
" Bundles vim-plug 
"
call plug#begin('~/.config/nvim/plugged')

" Look and Feel
Plug 'whatyouhide/vim-gotham'
Plug 'bling/vim-airline'

" File management
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" Git
Plug 'tpope/vim-fugitive'

" Undo persistance
Plug 'sjl/gundo.vim'

" Add plugins to &runtimepath
call plug#end()


"
" Configuration
"

" Color scheme {
    "set background=Dark        " Makes background dark
    "colorscheme Solarized      " Classic Dark Solarized
    colorscheme gotham          " Gotham dark theme
" }


" Airline Status {
    "set laststatus=2
    let g:airline_powerline_fonts = 1
    "set guifont=Hack:h12
    let g:airline#extensions#hunks#enabled = 1
    let g:airline#extensions#branch#enabled = 1
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
" }

" NERDTree {
    map <leader>n :NERDTreeTabsToggle<CR>
    let nerdtree_tabs_open_on_gui_startup = 0
    let NERDTreeQuitOnOpen = 1
    let NERDTreeAutoDeleteBuffer = 1
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1
" }

" Gundo {
	nnoremap <leader>u :GundoToggle<CR>
	set undodir=~/.config/nvim/undodir
	set undofile
	set undolevels=1000
	set undoreload=10000
" }

