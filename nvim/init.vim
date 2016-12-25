
"" Vim Stuff
set nocompatible

" Enable filetype and syntax plugins
filetype plugin on
filetype indent on
syntax on

" Vim Gui Config
set guioptions-=r       " Remove right-hand scroll bar
set guioptions-=L       " Remove left-hand scroll bar
set guioptions-=b       " bottom scroll bar
set number              " Show the line number
set showmatch           " Show matching brackets.
set autochdir           " Automatically change window's cwd to file's dir
set confirm             " get a dialog when :q, :w, or :wq fails
set autoread            " Watch for external changes of a file
set ruler		            " show current position
set magic		            " magic for regular expression
set showcmd		          " display incomplete command
set clipboard=unnamed   " Enable system clipboard
set termguicolors       " right terminal colors!

" List completions
set wildmenu
set wildmode=full
set wildignore=*.o,*~,*.pyc,*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif

"" Encoding set UTF-8 encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set fenc=utf-8
set termencoding=utf-8

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=0
set shiftwidth=2
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

" FishShell support for Nerdtree-tabs-git combo
set shell=sh

" Indents
set autoindent	 " Copy indent from current line when starting a new line
set smartindent  " Do smart autoindenting when starting a new line.

"=========================================
"" Behaviours
"=========================================

"" Fix backspace indent
set backspace=indent,eol,start

" Left goes back to the en-prev line
set whichwrap+=<,>,h,l,[,]

" Remove blank spaces before save
autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre * :FixWhitespace " by Plug-bronson/vim-trailing-whitespace

"=========================================
"" Mapping Keys
"=========================================

" Leader Mapping
let mapleader=' '


"=========================================
"" Bundles Pluggins by Vim-Plug
"
" to install:
"     curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"=========================================

" Vim-Plug init
call plug#begin('~/.config/nvim/plugged')

    " Themes & Visual look and feel
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'altercation/vim-colors-solarized'
    Plug 'whatyouhide/vim-gotham'
    Plug 'tomasr/molokai'
    Plug 'jacoborus/tender.vim'

    " Vim Editor Enhancements
    Plug 'sjl/gundo.vim'
    Plug 'tpope/vim-commentary'
"    Plug 'jiangmiao/auto-pairs'
    Plug 'bronson/vim-trailing-whitespace'
"    Plug 'davidhalter/jedi-vim'
    Plug 'nathanaelkane/vim-indent-guides'

    " Programming
    Plug 'pangloss/vim-javascript'
    Plug 'vim-syntastic/syntastic'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
    Plug 'jelera/vim-javascript-syntax'
    Plug 'othree/yajs.vim', { 'for': 'javascript' }
    Plug 'Raimondi/delimitMate'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'burnettk/vim-angular'
    Plug 'neomake/neomake'
    Plug 'mattn/emmet-vim/'
    Plug 'moll/vim-node'

    " Track the engine.
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'burnettk/vim-angular'
    Plug 'matthewsimo/angular-vim-snippets'

    " NERD Tree File manager
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'majutsushi/tagbar'

    Plug 'ap/vim-css-color'
    Plug 'heavenshell/vim-jsdoc'

" Add plugins to &runtimepath
call plug#end()


"=========================================
"" Vim Look and Feel Configuration
"=========================================
set termguicolors

" Color scheme {
    " set background=dark        " Makes background dark
    " colorscheme solarized      " Classic Dark Solarized
    colorscheme gotham          " Gotham dark theme
"}

" Visual limit of 80 column (Load after colorscheme) {
    let &colorcolumn="80,".join(range(120,999),",")
    highlight ColorColumn ctermbg=235 guibg=#0A1F2C
" }

"=========================================
"" Bundles Configuration
"=========================================

" Airline Status {
    set laststatus=2
    set guifont=Hack:h12

    let g:airline_powerline_fonts = 1
    let g:airline#extensions#hunks#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
" }

" NERDTree {
    map <leader>n :NERDTreeTabsToggle<CR>

    let g:NERDTreeQuitOnOpen = 1
    let g:NERDTreeAutoDeleteBuffer = 1
    let g:NERDTreeMinimalUI = 1
    let g:NERDTreeDirArrows = 1

    "" NERDTree Tabs
    let g:nerdtree_tabs_open_on_new_tab = 0
    let g:nerdtree_tabs_open_on_gui_startup = 0
" }
